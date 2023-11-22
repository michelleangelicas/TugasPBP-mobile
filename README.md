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

<details>
<summary>Tugas 9</summary>

# Tugas 9

## Apakah bisa kita melakukan pengambilan data JSON tanpa membuat model terlebih dahulu? Jika iya, apakah hal tersebut lebih baik daripada membuat model sebelum melakukan pengambilan data JSON?
Pengambilan data JSON bisa dilakukan tanpa membuat model terlebih dahulu. Dalam pemrograman, model adalah struktur yang mendefinisikan bentuk data, sering digunakan untuk memetakan data JSON ke objek dalam bahasa pemrograman tertentu. Namun, bisa mengambil data JSON dan menggunakannya secara langsung sebagai dictionary atau associative array, tergantung pada bahasa pemrograman yang digunakan.

Pengambilan Data JSON Tanpa Model:

* Fleksibilitas: Mengambil data langsung tanpa model memberikan fleksibilitas lebih dalam menangani data yang berubah-ubah.
* Kemudahan: Tidak perlu mendefinisikan struktur model terlebih dahulu, yang memudahkan saat berinteraksi dengan API yang tidak dikenal atau untuk prototyping cepat.
* Risiko: Meningkatkan risiko kesalahan saat runtime karena tidak ada pemeriksaan tipe atau validasi struktur data.
 
Pengambilan Data JSON Dengan Model:

* Keamanan Tipe: Model menyediakan keamanan tipe, memastikan data yang  diterima sesuai dengan apa yang diharapkan.
* Mudah Dikelola: Dengan model, kode  menjadi lebih terstruktur dan mudah dikelola.
* Pengembangan Skalabilitas: Model sangat membantu dalam pengembangan aplikasi berskala besar, dimana pemeliharaan kode menjadi lebih krusial.

## Jelaskan fungsi dari CookieRequest dan jelaskan mengapa instance CookieRequest perlu untuk dibagikan ke semua komponen di aplikasi Flutter.
Cookie biasanya digunakan untuk menyimpan informasi sesi pengguna dan preferensi lainnya.

Fungsi CookieRequest:
* Manajemen Sesi: Mengelola sesi pengguna, seperti login status atau preferensi pengguna.
* Keamanan: Meningkatkan keamanan dengan memastikan bahwa cookie dikirimkan hanya ke server yang benar.
* Konsistensi State: Menjaga konsistensi state pengguna di seluruh aplikasi.

Alasan CookieRequest Perlu Dibagikan:

* Konsistensi Data: Memastikan semua komponen aplikasi mendapatkan informasi sesi yang sama.
* Efisiensi Pengembangan: Mengurangi redundansi kode dalam mengelola cookie di berbagai bagian aplikasi.
* Manajemen State: Memudahkan manajemen state yang terkait dengan sesi pengguna di seluruh aplikasi.

## Jelaskan mekanisme pengambilan data dari JSON hingga dapat ditampilkan pada Flutter.
Request Data: Aplikasi Flutter membuat HTTP request ke server atau API yang menyediakan data dalam format JSON. Ini biasanya menggunakan package seperti http atau dio.

Menerima Respon: Server merespon request dengan data dalam format JSON.

Deserialisasi JSON: Data JSON yang diterima kemudian di-deserialisasi menjadi objek Dart. Ini bisa dilakukan secara manual dengan mengubah JSON menjadi Map dan kemudian membuat instance objek Dart, atau dengan menggunakan package seperti json_serializable yang mengotomatiskan proses ini.

Penggunaan Data: Setelah di-deserialisasi, data tersebut dapat digunakan dalam aplikasi Flutter untuk ditampilkan ke pengguna, misalnya dalam widget seperti ListView, Text, dll.

## Jelaskan mekanisme autentikasi dari input data akun pada Flutter ke Django hingga selesainya proses autentikasi oleh Django dan tampilnya menu pada Flutter.
Input Data Pengguna: Pengguna memasukkan detail login seperti username dan password di aplikasi Flutter.

Kirim Request Autentikasi: Aplikasi Flutter mengirimkan detail tersebut ke server Django, biasanya melalui HTTP POST request.

Proses di Django:

* Penerimaan Data: Django menerima data dan mengekstrak informasi login.
* Validasi: Django memvalidasi data tersebut, memeriksa apakah pengguna terdaftar dan informasi yang diberikan benar.
* Respon: Jika validasi berhasil, Django mengirimkan respon yang mungkin termasuk token autentikasi (seperti JWT) kembali ke aplikasi Flutter.
* Penerimaan Respon di Flutter: Aplikasi Flutter menerima respon. Jika autentikasi berhasil, aplikasi mungkin menyimpan token untuk sesi pengguna.

Navigasi Menu: Setelah autentikasi berhasil, aplikasi Flutter kemudian menavigasikan pengguna ke layar/menu utama atau mengaktifkan fitur tertentu yang membutuhkan autentikasi.

## Sebutkan seluruh widget yang kamu pakai pada tugas ini dan jelaskan fungsinya masing-masing.
* Scaffold: Mengatur dasar aplikasi dengan AppBar, Drawer, dan body.
* Form: Mengatur form untuk input data item.
* TextFormField: Widget input teks untuk mengumpulkan data, seperti nama item, jumlah, harga, dan deskripsi.
* ElevatedButton: Tombol elevated yang digunakan untuk menyimpan data item yang dimasukkan.
* SnackBar: Menampilkan notifikasi setelah berhasil menyimpan item atau jika terdapat kesalahan.
* FutureBuilder: Mengelola tampilan berdasarkan status future untuk mendapatkan dan menampilkan data item secara asinkronus.
* ListView.builder: Menampilkan daftar item dalam bentuk list yang dapat di-scroll.
* MaterialApp: Widget root yang menentukan tema dan halaman awal aplikasi.
* Provider: Digunakan untuk menyediakan instance CookieRequest ke seluruh aplikasi menggunakan Provider.
* Column: Menyusun widget secara vertikal.
* GridView.count: Menampilkan daftar item dalam grid layout.
* ShopCard: Widget custom untuk menampilkan setiap item dalam bentuk card.
* Material: Mengatur warna background item di dalam grid.
* InkWell: Widget responsif terhadap sentuhan pengguna.
* Icon: Menampilkan ikon item.
* Text: Menampilkan nama item.
* ListView: Menampilkan daftar opsi menu dalam drawer.
* ListTile: Membuat opsi menu dalam drawer.
* Navigator: Bertanggung jawab untuk menavigasi antar halaman dalam aplikasi.
* Card: Menampilkan list barang user dalam bentuk card.

## Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step! (bukan hanya sekadar mengikuti tutorial).
### Halaman login
- memodif main.dart agar menyediakan CookieRequest library untuk semua child widget dengan menggunakan Provider melalui pengubahan class MyApp. Serta mengubah bagian home:  ke login page yang akan dibuat.
- Membuat file baru dengan nama login.dart di folder screens dan mengisinya dengan program berikut.

### Fitur logout
- Membuat fungsi logout pada views.py di aplikasi authentication.
- Membuat path url untuk fungsi logout.
- Membuat fungsional tombol Logout di shop_card.dart

### Mengintegrasikan Django Authentication dengan Flutter
- Membuat sebuah aplikasi Django baru bernama authentication pada proyek tugas Django.
- Menambahkan authentication ke dalam INSTALLED_APPS pada settings.py di main project Django.
- Menambahkan django-cors-headers di dalam requirements.txt dan menjalankan pip install -r requirements.txt untuk menginstall dependencies.
- Menambahkan corsheaders ke dalam INSTALLED_APPS pada settings.py di main project Django.
- Menambahkan corsheaders.middleware.CorsMiddleware pada MIDDLEWARE di settings.py di main project Django.
- Menambahkan variabel - variabel pada settings.py.
- Membuat fungsi login di direktoriauthentication/views.py
- Menambahkan path url untuk aplikasi authentication yang sudah dibuat pada urls.py direktori proyek.
- Menambahkan path url untuk fungsi login yang sudah dibuat pada urls.py direktori aplikasi authentication.

### Membuat Model Kustom Sesuai dengan Proyek Django
- Membuka endpoint JSON yang sudah dibuat sebelumnya dan menyalin data ke Quicktype, dan sesuaikan pengatuhan setup name, source type, dan language hasil konversi.
- Menyalin hasil konversi ke dalam file baru product.dart dalam folder baru di lib/models/.

### Membuat Halaman yang Menampilkan Daftar Semua Item
Membuat file baru dalam folder lib/screens/ dengan nama list_product.dart

### Membuat Halaman Detail untuk Setiap Produk
- Membuat file baru pada lib/screens/ dengan nama product_detail.dart.
- Menambahkan kode untuk menampilkan detail produk.
- Menambahkan onTap: () pada tiap produk agar mengarahkan ke halaman product_detail.dart jika card tiap produk ditekan.
</details>