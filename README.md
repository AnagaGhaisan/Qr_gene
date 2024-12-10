# QrGene Flutter

QrGene Flutter adalah aplikasi berbasis Flutter untuk platform Android, iOS, Web, dan Desktop, dengan fitur QR code generation dan scanning.

## Fitur

- **Cross-platform**: Berjalan di Android, iOS, Web, dan Desktop.
- **QR Code**: Generate dan scan QR codes langsung dari aplikasi.
- **UI Responsif**: Tampilan yang dioptimalkan untuk berbagai ukuran layar.
- **Kustomisasi Mudah**: Struktur kode yang modular untuk mempermudah pengembangan fitur baru.

## Memulai

### Prasyarat

Pastikan Anda sudah menginstal Flutter di sistem Anda. Jika belum, ikuti [panduan instalasi Flutter](https://flutter.dev/docs/get-started/install) untuk OS Anda.

### Setup

1. Kloning repositori:
   ```bash
   git clone <repository-url>
   cd <repository-folder>
   ```

2. Install dependencies yang diperlukan:
   ```bash
   flutter pub get
   ```

3. Jalankan aplikasi pada platform pilihan Anda:
   ```bash
   flutter run
   ```

### Building for Production

- **Android**:
  ```bash
  flutter build apk
  ```

- **iOS**:
  ```bash
  flutter build ios
  ```

- **Web**:
  ```bash
  flutter build web
  ```

- **Windows**:
  ```bash
  flutter build windows
  ```

## Folder Struktur

- **lib/**: Berisi kode utama aplikasi.
  - **main.dart**: Titik masuk aplikasi.
  - **ui/**: Berisi file layar aplikasi:
    - `splash_screen.dart`: Tampilan layar splash.
    - `home_screen.dart`: Tampilan layar utama.
    - `qr_generator_screen.dart`: Layar untuk generate QR code.
    - `qr_scanner_screen.dart`: Layar untuk scan QR code.
- **assets/**: Tempat penyimpanan file statis seperti gambar, font, dll.
- **pubspec.yaml**: Mengelola dependencies proyek.

## Mockups

Berikut adalah beberapa mockup aplikasi (tambahkan gambar mockup ke folder `assets/images/`):
| Tampilan Mockup 1        | 
|--------------------------|
| ![Mockup 1](https://i.postimg.cc/ZRsL0TvW/Portfolio-Section.png) |

## Lisensi

Proyek ini menggunakan lisensi [MIT](LICENSE).

---

Dukung pengembangan aplikasi ini dengan memberikan bintang di repositori! 😊
