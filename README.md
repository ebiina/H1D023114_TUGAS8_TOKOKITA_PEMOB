# Toko Bina — Flutter CRUD Produk + Login

Aplikasi **Toko Bina** adalah aplikasi sederhana berbasis Flutter yang memiliki fitur:

- Login
- Registrasi
- CRUD Produk (Tambah, Lihat, Detail, Hapus)
- Logout
- Tema warna pink soft

---

## 📌 Struktur Utama Aplikasi

Berikut penjelasan file–file penting pada aplikasi:

---

## `main.dart`
File ini menjalankan aplikasi dan mengatur route utama serta tema.

- Menentukan halaman pertama (LoginPage)
- Menyediakan routing standar + `onGenerateRoute` untuk halaman detail produk

---

## `login_page.dart`
Halaman login sederhana.

- Menggunakan username & password statis:
username: admin
password: admin123

- Jika login berhasil → pindah ke halaman Produk
- Terdapat tombol menuju halaman Registrasi

---

## `registrasi_page.dart`
Halaman dummy untuk registrasi.  
Tidak menyimpan data ke server — hanya simulasi form.

---

## `produk_page.dart`
Menampilkan daftar produk (dummy list atau dari state).

Fitur:
- Melihat list produk
- Tombol tambah produk
- Klik item untuk menuju detail
- Tombol hapus dengan `WarningDialog`
- Tombol logout

---

## `produk_form.dart`
Form tambah produk baru.

Field:
- Nama produk
- Harga
- Stok
- Tombol simpan

---

## `produk_detail.dart`
Menampilkan detail lengkap produk:
- Nama
- Harga
- Stok

---

## `produk.dart` (Model)
Representasi objek Produk dengan field:
- id
- nama
- harga
- stok

---

## `produk_bloc.dart`
Simulasi pengelolaan produk (delete dan lain-lain).  
Masih dummy — bisa diganti API atau database lokal.

---

## `warning_dialog.dart`
Dialog peringatan reusable untuk:
- Konfirmasi hapus produk
- Notifikasi error ringan

---

---

# 📸 Screenshot Aplikasi


1. **Login Page**  
 `1login.png`

2. **Halaman Registrasi**  
 `2register.png`

3. **Daftar Produk**  
 `3produk.png`

4. **Detail Produk**  
 `4detail.png`

5. **Tambah Produk**  
 `5tambah.png`

6. **Logout (Popup / UI)**  
 `6logout.png`
---
