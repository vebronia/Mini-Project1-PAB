# Mini-Project1-PAB
# Dream Travel

| Nama                      | NIM           | Kelas             |
|---------------------------|---------------|-------------------|
|  Vebronia vitania Lusi    | 2409116112    | Sistem Informasi C|


## Deskripsi Aplikasi

Aplikasi **Dream Travel** adalah aplikasi berbasis **Flutter** yang digunakan untuk mengelola destinasi impian pengguna.  
Pengguna dapat **menambahkan**, **mengedit**, dan **menghapus** destinasi secara dinamis.

Setiap destinasi memiliki:
- Nama Destinasi
- Lokasi
- Budget
- Catatan

Data yang dimasukkan langsung muncul di halaman utama menggunakan **State Management** dengan **StatefulWidget** dan **setState()**.  

Aplikasi ini dibuat untuk memahami cara kerja perubahan state dan pembaruan **UI** secara real-time.

---

## Fitur Aplikasi

<details>
<summary><b>1. Halaman Utama</b></summary>
<br>

<div align="center">
  
  <img width="1919" height="878" alt="image" src="https://github.com/user-attachments/assets/bfb11698-4cae-4d75-9a08-f78a6f68e77e" />

 <p align="center">
  <b><em>Halaman Utama</em></b><br>
  Menampilkan daftar destinasi yang telah ditambahkan. Jika kosong, muncul pesan <b>"Belum ada destinasi"</b>.<br>
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
  
  <img width="1918" height="878" alt="Screenshot 2026-02-28 130305" src="https://github.com/user-attachments/assets/0575140f-4dc8-4f4c-a5e3-1bab67430782" />

  
<div align="center">
  <b><em>Menambahkan Destinasi Baru</em></b><br>
  Form menampilkan field:
</div>

<div align="left">
  <ul>
    <li>Nama Destinasi</li>
    <li>Lokasi</li>
    <li>Budget</li>
    <li>Catatan</li>
  </ul>
</div>

<div align="center">
  Tombol <b>Simpan</b> berwarna merah untuk menambah destinasi baru.
</div>
</details>

<details>
<summary><b>3. Menampilkan Daftar Destinasi</b></summary>
<br>

<div align="center">
  <img width="400" alt="Daftar Destinasi" src="screenshots/list_page.png" />
  <p align="center">
    <b><em>Daftar Destinasi</em></b><br>
    Setiap card menampilkan:
    <ul>
      <li>Nama Destinasi</li>
      <li>Lokasi</li>
      <li>Budget</li>
    </ul>
    Data muncul secara dinamis setelah ditambahkan.
  </p>
</div>

</details>

<details>
<summary><b>4. Empty State (Belum Ada Destinasi)</b></summary>
<br>

<div align="center">
  <img width="400" alt="Empty State" src="screenshots/empty_state.png" />
  <p align="center">
    <b><em>Empty State</em></b><br>
    Menampilkan pesan <b>"Belum ada destinasi"</b> jika daftar kosong.
  </p>
</div>

</details>

<details>
<summary><b>5. Mengedit Destinasi</b></summary>
<br>

<div align="center">
  <img width="400" alt="Edit Destinasi" src="screenshots/edit_page.png" />
  <p align="center">
    <b><em>Edit Destinasi</em></b><br>
    Tombol edit tersedia di setiap card.  
    Setelah perubahan disimpan, data langsung diperbarui di halaman utama.
  </p>
</div>

</details>

<details>
<summary><b>6. Menghapus Destinasi dengan Konfirmasi</b></summary>
<br>

<div align="center">
  <img width="400" alt="Hapus Destinasi" src="screenshots/delete_dialog.png" />
  <p align="center">
    <b><em>Hapus Destinasi</em></b><br>
    Terdapat tombol hapus di setiap card.  
    Dialog konfirmasi muncul sebelum penghapusan permanen.
  </p>
</div>

</details>

<details>
<summary><b>7. Notifikasi Aksi (SnackBar)</b></summary>
<br>

<div align="center">
  <img width="400" alt="SnackBar Notifikasi" src="screenshots/snackbar.png" />
  <p align="center">
    <b><em>Notifikasi Aksi</em></b><br>
    Menampilkan SnackBar ketika menambahkan atau menghapus destinasi sebagai feedback.
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
