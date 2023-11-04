<details>
<summary>Tugas 7</summary>

# Tugas 7

## Apa perbedaan utama antara stateless dan stateful widget dalam konteks pengembangan aplikasi Flutter?
### Stateless Widget:
* Tidak memiliki state yang dapat berubah seiring berjalannya waktu.
* Dibangun sekali dan tidak akan berubah kecuali jika input eksternal berubah (misal, parent widget membangun kembali).
### Stateful Widget:
* Memiliki state yang dapat berubah, dan dapat memicu ulang pembangunan widget.
* Cocok untuk widget yang interaktif dimana data dapat berubah karena interaksi pengguna atau operasi lainnya.

## Sebutkan seluruh widget yang kamu gunakan untuk menyelesaikan tugas ini dan jelaskan fungsinya masing-masing.

1. **MaterialApp**:
    - Widget ini adalah root widget dari seluruh aplikasi Flutter, dan menyediakan tema dan konfigurasi tingkat tinggi lainnya untuk aplikasi.

2. **ThemeData**:
    - Widget ini memungkinkan Anda untuk mendefinisikan tema untuk aplikasi, seperti warna, font, dan styling lainnya.

3. **ColorScheme**:
    - Digunakan dalam `ThemeData` untuk mendefinisikan skema warna untuk tema aplikasi.

4. **MyHomePage**:
    - Widget kustom ini adalah halaman utama dari aplikasi dan diatur sebagai `home` dari `MaterialApp`.

5. **Scaffold**:
    - Menyediakan struktur visual tingkat atas untuk membangun tampilan, seperti AppBar, Drawer, BottomNavigationBar, FloatingActionButton, dan body.

6. **AppBar**:
    - Widget ini menampilkan bar aplikasi di bagian atas layar yang biasanya berisi judul aplikasi.

7. **Text**:
    - Widget ini menampilkan teks dengan style yang dapat disesuaikan.

8. **SingleChildScrollView**:
    - Widget ini memungkinkan kontennya dapat discroll jika konten melebihi ukuran layar.

9. **Padding**:
    - Widget ini menambahkan padding di sekitar child-nya.

10. **Column**:
     - Menyusun child-nya dalam urutan vertikal.

11. **GridView**:
     - Menampilkan child-nya dalam grid 2D yang dapat discroll.

12. **ShopCard**:
     - Widget kustom ini menampilkan card dengan icon, teks, dan warna yang berbeda untuk setiap item.

13. **Material**:
     - Widget ini menambahkan Material Design visual ke widget child-nya.

14. **InkWell**:
     - Widget ini menanggapi sentuhan dan menciptakan efek gelombang tinta saat diketuk.

15. **Container**:
     - Widget ini adalah kotak penyimpanan yang dapat mengandung padding, margin, dan child.

16. **Center**:
     - Widget ini memusatkan child-nya dalam dirinya.

17. **Column** (di dalam `ShopCard`):
     - Sama seperti di atas, menyusun child-nya dalam urutan vertikal.

18. **Icon**:
     - Menampilkan icon grafis.

19. **ScaffoldMessenger**:
     - Widget ini digunakan untuk menampilkan `SnackBar` di bagian bawah layar.

20. **SnackBar**:
     - Menampilkan pesan ringan di bagian bawah layar.

## Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step (bukan hanya sekadar mengikuti tutorial)
Membuat proyek flutter baru dengan cara `flutter create` lalu di dalam direktori tersebut coba `flutter run` dan saya run di Chrome. 

Menambahkan tombol-tombol tersebut dengan `List<ShopItem>` yang isinya `ShopItem()` untuk setiap tombolnya. 

Memunculkan Snackbar dengan cara menambahkan widget build yang isinya ada ScaffoldMessenger yang berisi content text tersebut ketika diklik (memakai onTap)

Implementasi warna yang berbeda untuk setiap tombolnya dengan cara menambahkan atribut `color` dengan tipe data `Color` di class `ShopItem`, lalu menambahkan color juga di `List<ShopItem>`, lalu mengubah baris color pada widget build sehingga menjadi `item.color`.

</details>