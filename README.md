# Tugas 7 PBP (Flutter)
## Muhammad Fahreza Azka Arafat (2106752331)

### Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget dan jelaskan perbedaan dari keduanya.

Sebuah widget stateless adalah widget yang tidak berubah walaupun ada interaksi dengan user. Stateful widget adalah widget yang berubah apabila ada interaksi dengan user. Contoh dari stateless widget adalah Icon, IconButton dan, Text. Contoh dari stateful widget adalah Checkbox, Radio, Slider, InkWell, Form dan, TextField.

### Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.

Widget yang digunakan pada proyek kali ini adalah Text untuk menampilkan ganjil genap (dengan TextStyle) dan Counter, serta FloatingActionButton untuk menjalankan fungsi increment atau decrement yang akan merubah angka yang ditampilkan pada counter. Padding untuk formatting posisi FloatingActionButton. Visibility untuk mengatur visibilitas FloatingActionButton decrement. Icon untuk simbol plus dan minus. Center dan Column untuk layout.

### Apa fungsi dari setState()? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.

Fungsi setState() digunakan untuk memberitahu Flutter untuk mengupdate widget suatu state menjadi state yang diinginkan. Salah satu dari penggunaan fungsi setState() adalah untuk mengupdate user interface aplikasi secara dinamis.

### Jelaskan perbedaan antara const dengan final.

Perbedaan antara const dan final adalah, const membuat variabel konstan hanya saat compile-time saja, sedangkan final tidak. Apabila digunakan keyword final dan di assign value ke variabel final tersebut, value dari variabel final tersebut sudah tidak bisa diubah-ubah lagi.

### Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.
##### 1. Memasukkan FloatingActionButton yang terhubung ke fungsi increment ke row (menjadi child row)
##### 2. Membuat Padding untuk formatting lokasi tombol
##### 3. Menambahkan child visibility yang hanya visible apabila counter > 0
##### 4. Membuat fungsi yang mereturn sebuah FloatingActionButton
##### 5. Membuat fungsi tersebut menjadi child visibilty
##### 6. Membuat if statement berisi text GANJIL GENAP dengan TextStyle biru dan merah

# Tugas 8 PBP (Flutter)
## Muhammad Fahreza Azka Arafat (2106752331)

###  Jelaskan perbedaan Navigator.push dan Navigator.pushReplacement.

Perbedaan antara Navigator.push dan Navigator.pushReplacement adalah, kalau push saja sesuai namanya, ia menambahkan route baru ke stack diatas route yang sebelumnya ada di top. pushReplacement menambahkan route baru sekaligus menghapus route sebelumnya setelah route baru selesai di load.

### Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.

##### 1. Drawer untuk mengakses berbagai menu aplikasi.
##### 2. Form untuk menerima data dari user.
##### 3. TextFormField untuk menerima input text dari user.
##### 4. ListTile untuk tombol menu di drawer dll.
##### 5. Dropdown Button untuk memilih tipe.
##### 6. Widget yang telah dipakai di Tugas 7 dan berbagai widget untuk formatting seperti Row dll.

### Sebutkan jenis-jenis event yang ada pada Flutter (contoh: onPressed).

##### 1. onPressed = Menjalankan blok kode apabila user menekan sebuah button.
##### 2. onLongPress = Menjalankan blok kode apabila user menahan sebuah button dalam posisi klik dalam jangka waktu tertentu.
##### 3. onHover = Menjalankan blok kode apabila user memposisikan pointer diatas sebuah hal tanpa mengkliknya.
##### 4. onSaved = Menjalankan blok kode apabila data milik form disimpan melalui FormState.save.
##### 5. onChanged = Menjalankan blok kode apabila pengguna merubah suatu hal.
##### 6. onTap = Secara fungsionalitas sama seperti onPressed.

### Jelaskan bagaimana cara kerja Navigator dalam "mengganti" halaman dari aplikasi Flutter.

Navigator dalam flutter secara prinsip bekerja seperti sebuah stack. Digunakan untuk men-traverse halaman dalam aplikasi. Hal ini dicapai dengan operasi push kedalam stack apabila ingin ke halaman baru, dan operasi pop untuk kembali ke halaman yang sebelumnya. Halaman yang sedang diakses user adalah top dari stacknya.

### Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.

##### 1. Menambahkan implementasi drawer dengan tombol-tombol untuk mengakses berbagai menu berbeda.
##### 2. Menambahkan implementasi form dengan field yang diperlukan.
##### 3. Menambahkan halaman baru untuk mendisplay data yang telah didapat dari form.

# Tugas 9 PBP (Flutter)

### Apakah bisa kita melakukan pengambilan data JSON tanpa membuat model terlebih dahulu? Jika iya, apakah hal tersebut lebih baik daripada membuat model sebelum melakukan pengambilan data JSON?

Bisa, karena data JSON dapat disimpan dalam sebuah Map, namun tidak lebih baik, hal ini dikarenakan kita tidak mengetahui nilai dari item JSON tersebut.

### Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.

##### 1. ListTile untuk elemen-elemen dalam drawer dan melist film.
##### 2. Align untuk mengatur posisi elemen.
##### 3. FutureBuilder untuk update terhadap elemen sesuai dengan future.
##### 4. Checkbox untuk implementasi bonus
##### 5. ListView.builder untuk membuat list widget yang dapat discroll.
##### 6. Padding untuk mengatur posisi elemen.

### Jelaskan mekanisme pengambilan data dari json hingga dapat ditampilkan pada Flutter.

Data JSON diambil dengan membuat sebuah fungsi yang mengirim HTTP GET request ke Heroku. Response ini kemudian diproses dan digunakan untuk menginisialisasi model yang telah didefinisikan sebelumnya.

### Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.

##### 1. Menambahkan mywatchlist ke drawer agar bisa diakses melalui drawer.
##### 2. Membuat file fetchJSON.dart untuk mengambil data JSON dari heroku.
##### 3. Membuat file mywatchlist.dart sebagai model untuk data tersebut.
##### 4. Membuat file watchlist.dart untuk menampilkan data sesuai kriteria.
##### 5. Membuat file detailwatchlist.dart untuk menampilkan data detail masing-masing film.
##### 6 Mengerjakan bonus (Menambahkan checkbox, border, dll.)

