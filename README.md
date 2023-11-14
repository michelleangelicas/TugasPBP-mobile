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
    - Widget ini memungkinkan untuk mendefinisikan tema untuk aplikasi, seperti warna, font, dan styling lainnya.

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

<details>
<summary>Tugas 8</summary>

# Tugas 8

## Jelaskan perbedaan antara Navigator.push() dan Navigator.pushReplacement(), disertai dengan contoh mengenai penggunaan kedua metode tersebut yang tepat!

Dalam Flutter, Navigator adalah sebuah widget yang mengelola rute dalam sebuah aplikasi. Ia menggunakan stack untuk mengatur rute-rute (halaman) dalam aplikasi. Berikut penjelasan dan contoh dari Navigator.push() dan Navigator.pushReplacement():

### Navigator.push():

Fungsi ini digunakan untuk menavigasi ke sebuah halaman baru di atas halaman yang saat ini aktif.

Saat menggunakan Navigator.push(), halaman baru ditambahkan ke stack navigator sehingga halaman sebelumnya tetap ada di bawah halaman baru.

Pengguna dapat kembali ke halaman sebelumnya dengan menggunakan tombol kembali atau dengan memanggil Navigator.pop().

Contoh Penggunaan Navigator.push():

Navigator.push(
  context,
  MaterialPageRoute(builder: (context) => NewPage()),
);

Dalam contoh ini, ketika kode dijalankan, NewPage() akan ditumpuk di atas halaman saat ini, dan pengguna bisa kembali ke halaman sebelumnya jika mereka memilih.

### Navigator.pushReplacement():

Fungsi ini digunakan untuk menavigasi ke halaman baru dengan mengganti halaman saat ini di stack navigator.
Saat menggunakan Navigator.pushReplacement(), halaman saat ini dihapus dari stack dan halaman baru diletakkan di posisi yang sama dalam stack.
Ini berguna ketika tidak ingin pengguna kembali ke halaman sebelumnya, misalnya setelah proses login sukses.
Contoh Penggunaan Navigator.pushReplacement():


Navigator.pushReplacement(
  context,
  MaterialPageRoute(builder: (context) => HomePage()),
);

Dalam contoh di atas, HomePage() menggantikan halaman saat ini dalam stack dan pengguna tidak akan memiliki opsi untuk kembali ke halaman yang digantikan.

##  Jelaskan masing-masing layout widget pada Flutter dan konteks penggunaannya masing-masing!

### Container:

Widget yang digunakan untuk membuat sebuah 'kotak' dekoratif dengan latar belakang, border, dan margin.
Digunakan ketika ingin menyesuaikan tampilan dan posisi dari child widget.

### Row dan Column:

Row digunakan untuk layout horizontal, sedangkan Column untuk layout vertikal.
Keduanya digunakan ketika ingin menyusun beberapa widgets secara horizontal (Row) atau vertikal (Column).

### Stack:

Memungkinkan penumpukan widget di atas widget lain.
Berguna untuk overlap widget, seperti menempatkan badge di atas ikon.

### Padding:

Digunakan untuk memberi ruang di sekeliling child widget.
Berguna untuk menghindari konten yang terpotong atau terlalu dekat dengan tepi layar atau widget lain.

### Align atau Center:

Align mengizinkan untuk menentukan posisi child widget di dalamnya, sementara Center adalah versi khusus dari Align yang langsung memusatkan child-nya.
Digunakan untuk menentukan posisi atau untuk memusatkan widget.

### Expanded dan Flexible:

Kedua widget ini digunakan dalam Row dan Column untuk memberi child widget ruang yang proporsional.
Expanded memaksa child widget untuk mengisi ruang yang tersedia, sementara Flexible memberikan lebih banyak fleksibilitas dengan memungkinkan beberapa children membagi ruang yang tersedia.

### ListView:

Widget yang membuat daftar scrollable secara vertikal.
Digunakan untuk menampilkan daftar item yang bisa di-scroll.

### GridView:

Widget yang membuat grid scrollable.
Ideal untuk menampilkan banyak data yang membutuhkan layout grid.

### Wrap:

Menyusun child widget secara horizontal atau vertikal dan secara otomatis pindah ke baris atau kolom baru saat tidak ada ruang.
Berguna saat memiliki koleksi widget yang bisa melebihi layar secara horizontal atau vertikal dan ingin mereka tampilan tanpa perlu scroll.

### Scaffold:

Menyediakan kerangka untuk mengimplementasikan struktur dasar Material Design seperti AppBar, Drawer, dan FloatingActionButton.
Biasanya digunakan sebagai root widget dari halaman yang mengikuti Material Design.


## Sebutkan apa saja elemen input pada form yang kamu pakai pada tugas kali ini dan jelaskan mengapa kamu menggunakan elemen input tersebut!
Name: Elemen input ini digunakan untuk memasukkan nama item yang akan ditambahkan. Penggunaan elemen ini penting karena setiap item perlu memiliki identifikasi yang unik, dan nama adalah cara yang paling umum dan mudah untuk mengidentifikasi suatu item.

Amount: Elemen ini digunakan untuk memasukkan jumlah atau kuantitas item. Ini penting dalam konteks manajemen stok atau inventaris, karena memungkinkan untuk melacak berapa banyak unit dari setiap item yang dimiliki.

Description: Elemen input ini memungkinkan pengguna untuk memasukkan deskripsi tentang item tersebut. Ini berguna untuk memberikan informasi tambahan tentang item, seperti spesifikasi, warna, ukuran, atau detail lainnya yang mungkin penting bagi pengguna atau untuk keperluan inventaris.
 
## Bagaimana penerapan clean architecture pada aplikasi Flutter?
Penerapan Clean Architecture pada aplikasi Flutter melibatkan pemisahan kode ke dalam lapisan dengan tanggung jawab yang berbeda. Tujuannya adalah untuk menciptakan sistem yang independen terhadap UI, framework, database, atau agen eksternal lainnya. Ini memudahkan pengujian, pemeliharaan, dan skalabilitas aplikasi. Berikut ini adalah cara penerapan Clean Architecture dalam konteks Flutter:

Entities (atau Business Objects):

Entities adalah objek domain yang mewakili kasus penggunaan utama aplikasi.
Mereka harus independen dari lapisan lain dan biasanya tidak berubah ketika sesuatu di luar berubah, seperti database atau antarmuka pengguna.

Use Cases (atau Interactors):

Use Cases adalah tempat menempatkan logika bisnis aplikasi.
Setiap Use Case harus melakukan satu hal saja dan tidak bergantung pada lapisan Presentasi atau Data.

Repositories:

Repositories adalah abstraksi yang menyediakan interface ke lapisan Data atau Sumber Data.
Mereka digunakan oleh Use Cases untuk meminta data, tanpa harus tahu tentang asal-usulnya (misalnya, dari jaringan atau database lokal).

Data Sources:

Ini adalah lapisan dimana berinteraksi dengan database, jaringan, atau penyimpanan data lainnya.
Ada dua jenis Data Sources: Remote (API) dan Local (Database lokal).

Data Models:

Data Models adalah representasi dari data yang dirancang untuk lapisan Data.
Mereka dapat dikonversi dari dan ke Entities.

Dependency Injection:

Digunakan untuk menyuntikkan ketergantungan ke dalam komponen, seperti Use Cases atau Repositories, tanpa mengerasnya.
Ini memfasilitasi pengujian dan memungkinkan untuk mengganti implementasi nyata dengan mock atau stub saat pengujian.

Presentation (UI):

Lapisan ini terdiri dari Widgets yang Flutter gunakan untuk membuat UI.
Lapisan Presentasi harus hanya berisi logika untuk mengontrol UI, seperti Controllers, ViewModels, atau Bloc/Cubit jika menggunakan state management seperti Bloc.

Controllers/ViewModels/Blocs:

Ini adalah komponen yang bertindak sebagai penghubung antara UI dan Use Cases.
Mereka mengontrol aliran data ke UI dan dari UI, menangani state, dan mungkin mengontrol navigasi.

## Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step!
Menambahkan form dan elemen input untuk memasukkan data item, dengan membuat shoplist_form.dart. berisi `class ShopFormPage extends StatefulWidget` dan `class _ShopFormPageState extends State<ShopFormPage>`. 
Membuat variabel baru `_formKey` lalu mengisi widget FOrm dengan field. buat widget Column, TextFormField untuk Nama, Amount, dan Deskripsi

Menambah fitur navigasi pada tombol dengan atribut `onTap` sehingga ketika ditekan, tampilannya akan berubah. lalu menggunakan `Navigator.push()` dan `Navigator.pop()`

Menambahkan drawer menu dengan membuat file baru `left_drawer.dart` lalu membuat `class LeftDrawer extends StatelessWidget` lalu membuat ListTile untuk setiap routing. 

Untuk menampilkan data items yang sudah dibuat, saya masih menggunakan dummy. Dengan cara membuat models untuk setiap field terleih dahulu, lalu membuat file `items_list_page.dart` untuk tampilan laman daftar itemsnya. lalu untuk routingnya juga sama seperti yang sudah diterapkan pada Tambah Item. 
</details>