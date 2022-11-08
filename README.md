# Tugas 7 PBP (Flutter)
## Muhammad Fahreza Azka Arafat (2106752331)

### Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget dan jelaskan perbedaan dari keduanya.

Sebuah widget stateless adalah widget yang tidak berubah walaupun ada interaksi dengan user. Stateful widget adalah widget yang berubah apabila ada interaksi dengan user. Contoh dari stateless widget adalah Icon, IconButton dan, Text. Contoh dari stateful widget adalah Checkbox, Radio, Slider, InkWell, Form dan, TextField.

### Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.

Widget yang digunakan pada proyek kali ini adalah Text untuk menampilkan ganjil genap (dengan TextStyle) dan Counter, serta FloatingActionButton untuk menjalankan fungsi increment atau decrement yang akan merubah angka yang ditampilkan pada counter.

### Apa fungsi dari setState()? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.

Fungsi setState() digunakan untuk memberitahu Flutter untuk mengupdate widget suatu state menjadi state yang diinginkan. Salah satu dari penggunaan fungsi setState() adalah untuk mengupdate user interface aplikasi secara dinamis.

### Jelaskan perbedaan antara const dengan final.

Perbedaan antara const dan final adalah, const membuat variabel konstan hanya saat compile-time saja, sedangkan final tidak. Apabila digunakan keyword final dan di assign value ke variabel final tersebut, value dari variabel final tersebut sudah tidak bisa diubah-ubah lagi.

### Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.
#### 1. Memasukkan FloatingActionButton yang terhubung ke fungsi increment ke row (menjadi child row)
#### 2. Membuat Padding untuk formatting lokasi tombol
#### 3. Menambahkan child visibility yang hanya visible apabila counter > 0
#### 4. Membuat fungsi yang mereturn sebuah FloatingActionButton
#### 5. Membuat fungsi tersebut menjadi child visibilty
#### 6. Membuat if statement berisi text GANJIL GENAP dengan TextStyle biru dan merah
