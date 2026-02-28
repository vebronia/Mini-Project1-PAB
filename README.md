# Mini-Project1-PAB  
# Dream Travel✈️

| Nama                  | NIM         | Kelas             |
|-----------------------|------------|------------------|
| Vebronia Vitania Lusi | 2409116112 | Sistem Informasi C |

---

## Deskripsi Aplikasi

Aplikasi **Dream Travel** adalah aplikasi berbasis **Flutter** untuk mengelola destinasi impian pengguna.  
Pengguna dapat **menambahkan**, **mengedit**, dan **menghapus** destinasi secara dinamis.

Setiap destinasi memiliki:
- Nama Destinasi
- Lokasi
- Budget
- Catatan
- Kategori (Pantai, Gunung, Kota)

Data yang dimasukkan langsung muncul di halaman utama menggunakan **State Management** dengan **StatefulWidget** dan **setState()**.  
Aplikasi ini dibuat untuk memahami perubahan state dan pembaruan **UI** secara real-time.

---

## Fitur Aplikasi

<details>
<summary><b>1. Halaman Utama</b></summary>
<br>

<div align="center">
  
  <img width="1919" height="878" alt="Screenshot 2026-02-28 130643" src="https://github.com/user-attachments/assets/88a2093d-9560-43dc-acbf-6a79953746b6" />

</div>

<p align="center">
  <b><em>Halaman Utama</em></b><br>
  Menampilkan daftar destinasi yang telah ditambahkan. Jika kosong, muncul pesan <b>"Belum ada destinasi"</b>.
</p>

<div align="left">
  <b>Komponen utama:</b>
  <ul>
    <li>Banner aplikasi</li>
    <li>Judul aplikasi di bagian atas</li>
    <li><b>FloatingActionButton (+)</b> untuk menambahkan destinasi</li>
  </ul>
</div>

</details>

<details>
<summary><b>2. Menambahkan Destinasi Baru</b></summary>
<br>

<div align="center">
  
<img width="1919" height="882" alt="Screenshot 2026-02-28 131530" src="https://github.com/user-attachments/assets/066cf077-06f6-41cc-a9e4-8dac6ad2dbae" />

</div>
<p align="center">
  <b><em>Menambahkan Destinasi Baru</em></b>
</p>

<div align="left">
  <ul>
    <li>Nama Destinasi</li>
    <li>Lokasi</li>
    <li>Budget</li>
    <li>Catatan</li>
    <li>Kategori Destinasi (Pantai, Gunung, Kota)</li>
  </ul>
</div>

<p align="center">
  Tombol <b>Simpan</b> berwarna merah untuk menambah destinasi baru.
</p>

</details>

<details>
<summary><b>3. Menampilkan Daftar Destinasi</b></summary>
<br>

<div align="center">
  
  <img width="411" height="883" alt="Screenshot 2026-02-28 131844" src="https://github.com/user-attachments/assets/3c3dc894-5e0d-4cf6-8825-e1537de15d42" />


</div>

<p align="center">
  <b><em>Daftar Destinasi</em></b>
</p>

<div align="left">
  <ul>
    <li>Nama Destinasi</li>
    <li>Lokasi</li>
    <li>Budget</li>
    <li>Catatan</li>
  </ul>
</div>

<p align="center">
  Data muncul secara dinamis setelah ditambahkan.
</p>

</details>

<details>
<summary><b>4. Kategori Destinasi</b></summary>
<br>

<div align="center">#
  
  <img width="1919" height="882" alt="Screenshot 2026-02-28 134132" src="https://github.com/user-attachments/assets/58b522d7-cd01-4591-a0be-60837a2f52f8" />

  
</div>

<p align="center">
  <b><em>Kategori Destinasi</em></b><br>
  Pengguna dapat memilih kategori destinasi: <b>Pantai</b>, <b>Gunung</b>, atau <b>Kota</b>.
</p>

<div align="left">
  <ul>
    <li><b>Pantai:</b> Destinasi berhubungan dengan pantai, laut, atau pulau.</li>
    <li><b>Gunung:</b> Destinasi berhubungan dengan pendakian, gunung, dan alam pegunungan.</li>
    <li><b>Kota:</b> Destinasi di kota, tempat wisata perkotaan, atau landmark terkenal.</li>
     <li><b>Semua:</b> untuk menampilkan semua destinasi.</li>
  </ul>
</div>

</details>

<details>
<summary><b>5. Empty State (Belum Ada Destinasi)</b></summary>
<br>

<div align="center">
  
<img width="1919" height="878" alt="Screenshot 2026-02-28 130643" src="https://github.com/user-attachments/assets/3a9f88c9-f387-43f5-b8fa-0ec98109271c" />

  
  <p align="center">
    <b><em>Empty State</em></b><br>
    Menampilkan pesan <b>"Belum ada destinasi"</b> jika daftar kosong.
  </p>
</div>

</details>

<details>
<summary><b>6. Mengedit Destinasi</b></summary>
<br>

<div align="center">
  
<img width="1909" height="218" alt="image" src="https://github.com/user-attachments/assets/260c9555-50e5-4156-965d-1ea707cf2617" />

  <p align="center">
    <b><em>Edit Destinasi</em></b><br>
    Tombol edit tersedia di setiap card.<br>
    Setelah perubahan disimpan, data langsung diperbarui di halaman utama.
  </p>
</div>

</details>

<details>
<summary><b>7. Menghapus Destinasi dengan Konfirmasi</b></summary>
<br>

<div align="center">
  
 <img width="1919" height="884" alt="image" src="https://github.com/user-attachments/assets/19ef9fe8-4320-494e-b34d-34f0b0ec187e" />
  
  <p align="center">
    <b><em>Hapus Destinasi</em></b><br>
    Tombol hapus tersedia di setiap card.<br>
    Dialog konfirmasi muncul sebelum penghapusan permanen.
  </p>
</div>

</details>

<details>

<summary><b>8. State Management</b></summary>
<br>

<div align="center">
  <p align="center">
    <b><em>State Management</em></b><br>
    Menggunakan <b>StatefulWidget</b> dan <b>setState()</b> untuk memperbarui tampilan UI secara real-time saat data berubah.
  </p>
</div>

</details>

---

## Teknologi yang Digunakan
- Flutter
- Dart
- StatefulWidget & setState()

---

## Struktur Folder

```text
mini_project1_pab/
│
├─ lib/
│  ├─ main.dart
│  ├─ models/
│  │  └─ destination.dart
│  ├─ pages/
│  │  ├─ home_page.dart
│  │  ├─ add_page.dart
│  │  └─ detail_page.dart

