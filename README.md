# DeliverEats

DeliverEats adalah aplikasi yang dirancang untuk memudahkan pengguna dalam memesan makanan dari berbagai restoran.

## Fitur

- **Navigasi Bawah**: Memudahkan pengguna untuk berpindah antar halaman utama.
- **Detail Restoran**: Menampilkan informasi lengkap tentang restoran.
- **Profil Pengguna**: Mengelola informasi pengguna.
- **Ringkasan Pesanan**: Menampilkan ringkasan pesanan pengguna.

## Struktur Proyek

- `lib/domain/core`: Berisi definisi dan pengelolaan kesalahan aplikasi.
- `lib/core/utils`: Berisi modul utilitas dan pengamat BLoC sederhana.
- `lib/application/bottom_navigation`: Mengelola logika navigasi bawah menggunakan Cubit.
- `lib/presentation/pages`: Berisi halaman-halaman utama aplikasi seperti detail restoran, profil, dan ringkasan pesanan.

## Instalasi

1. Clone repository ini:
   ```bash
   git clone https://github.com/haikalhafizh24/deliverEats.git
   ```

2. Masuk ke direktori proyek:
   ```bash
   cd deliverEats
   ```

3. Instal dependensi:
   ```bash
   flutter pub get
   ```

4. Jalankan aplikasi:
   ```bash
   flutter run
   ```

## Kontribusi

Jika Anda ingin berkontribusi pada proyek ini, silakan fork repository ini dan buat pull request dengan perubahan Anda.

## Lisensi

Proyek ini dilisensikan di bawah [MIT License](LICENSE).
