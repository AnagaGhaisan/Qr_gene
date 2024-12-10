import 'package:flutter/material.dart';

// Define a constant for default padding
const double kDefaultPadding = 20.0;

// User model to hold user information
class User {
  final String name;
  final String role;
  final String profileImagePath;

  User({
    required this.name,
    required this.role,
    required this.profileImagePath,
  });
}

// HomeScreen widget
class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final User currentUser = User(
    name: "Anaga",
    role: "Junior Dev",
    profileImagePath: 'assets/images/profile.jpg',
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Qr Maker/Gene', style: TextStyle(color: Colors.black)),
        backgroundColor: const Color(0xFFFBF8EF),
        elevation: 0,
        actions: [
          IconButton(
            icon: const Icon(Icons.settings, color: Colors.black),
            onPressed: () {
              // Handle settings action
            },
          )
        ],
      ),
      body: Container(
  color: const Color(0xFFFBF8EF), // Set the background color
  child: Padding(
    padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        UserProfileHeader(user: currentUser),
        const SizedBox(height: 20),
        const Text("Welcome to", style: TextStyle(fontSize: 20)),
        const Text(
          "QR GENE",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 20),
        Expanded(
  child: GridView.builder(
    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 1, // Menjadikan grid menjadi satu kolom
      childAspectRatio: 2, // Menyesuaikan rasio tinggi dan lebar item dalam grid
      crossAxisSpacing: 10, // Jarak antar item secara horizontal
      mainAxisSpacing: 10, // Jarak antar item secara vertikal
    ),
    padding: const EdgeInsets.all(10),
    itemCount: 2, // Jumlah item dalam grid
    itemBuilder: (context, index) {
      return BuildButton(
        icon: index == 0 ? Icons.qr_code : Icons.qr_code_scanner,
        label: index == 0 ? 'Create' : 'Scan',
        iconColor: Colors.white,
        backgroundColor: index == 0 ? const Color(0xFFF96E2A) : const Color(0xFF604CC3),
        onTap: () {
          if (index == 0) {
            Navigator.pushNamed(context, '/create');
          } else {
            Navigator.pushNamed(context, '/scan');
          }
        },
      );
    },
  ),
),

      ],
    ),
  ),
),

    );
  }
}

// UserProfileHeader widget
class UserProfileHeader extends StatelessWidget {
  const UserProfileHeader({super.key, required this.user});

  final User user;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 30,
          backgroundImage: AssetImage(user.profileImagePath),
        ),
        const SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Hello, ${user.name}",
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              user.role,
              style: const TextStyle(
                fontSize: 15,
                color: Colors.grey,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        )
      ],
    );
  }
}

// BuildButton widget
class BuildButton extends StatelessWidget {
  const BuildButton({
    super.key,
    required this.icon,
    required this.label,
    this.iconColor = Colors.black,
    this.backgroundColor = Colors.white,
    required this.onTap,
  });

  final IconData icon;
  final String label;
  final Color iconColor;
  final Color backgroundColor;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: backgroundColor.withOpacity(0.1),
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.05),
              blurRadius: 15,
              offset: const Offset(0, 5),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                color: backgroundColor,
                borderRadius: BorderRadius.circular(12),
              ),
              padding: const EdgeInsets.all(20),
              child: Icon(
                icon,
                color: iconColor,
                size: 40,
              ),
            ),
            const SizedBox(height: 15),
            Text(
              label,
              style: const TextStyle(
                color: Colors.black87,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
