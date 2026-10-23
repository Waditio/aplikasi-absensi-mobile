# AI Declaration Aplikasi Absensi

## 1. Informasi Proyek

-   Nama proyek: Aplikasi Absensi
-   Framework: Flutter
-   Bahasa pemrograman: Dart
-   IDE: Android Studio
-   Repository: https://github.com/Waditio/aplikasi-absensi-mobile.git

## 2. AI yang Digunakan

Dalam proses pengembangan proyek ini, saya menggunakan ChatGPT sebagai
alat bantu untuk mempelajari kode Flutter, memahami alur fitur, menyusun
penjelasan kode untuk presentasi UTS, serta menganalisis pesan error
yang muncul saat aplikasi dijalankan.

AI digunakan sebagai pendamping belajar dan sumber saran. Hasilnya tetap
perlu dicocokkan dengan kode proyek dan diuji secara langsung.

## 3. Bagian yang Dibantu AI dan Pekerjaan Manual

### A. Bantuan AI

Berdasarkan proses pengerjaan dan pembahasan proyek, ChatGPT membantu
dalam hal berikut:

-   Menjelaskan alur fitur **Quick Absensi**, termasuk inisialisasi
    kamera, pengambilan foto, pengiriman `image.path` ke halaman
    konfirmasi, dan penggunaan `Navigator.push()`.
-   Menjelaskan fungsi `CameraController`, `CameraPreview`,
    `Image.file()`, `await`, serta `dispose()` pada kode kamera.
-   Menjelaskan halaman **Profile**, fungsi `_profileItem()` yang
    menggunakan `Card` dan `ListTile`, serta navigasi menuju
    `RekapAnggotaScreen`.
-   Menyusun naskah presentasi UTS agar penjelasan demo aplikasi dan dua
    sesi bedah kode dapat disampaikan dengan runtut.
-   Menganalisis error pada `profile_screen.dart` yang disebabkan oleh
    salah ketik konstanta warna, yaitu `Color(0xFqF4A0B0B)`, dan
    menyarankan perbaikan menjadi `Color(0xFF4A0B0B)`.
-   Membantu menyiapkan dokumentasi deklarasi penggunaan AI untuk
    repository proyek.

### B. Pekerjaan dan pemeriksaan manual

Dalam pengerjaan proyek, kode dan saran tetap perlu diperiksa serta
disesuaikan dengan kondisi proyek. Pemeriksaan yang relevan meliputi:

-   Menempatkan dan mengintegrasikan kode ke dalam struktur proyek
    Flutter di Android Studio.
-   Memastikan nama file, nama kelas, parameter, dan import sesuai
    dengan proyek, termasuk `QuickAbsensiScreen`,
    `KonfirmasiAbsensiScreen`, dan `RekapAnggotaScreen`.
-   Menjalankan aplikasi untuk memeriksa tampilan dan alur fitur.
-   Memperbaiki kesalahan penulisan kode yang ditemukan, kemudian
    menjalankan ulang aplikasi untuk memeriksa hasilnya.

Bagian ini menjelaskan jenis pemeriksaan yang diperlukan. Rincian
pekerjaan manual harus disesuaikan dengan langkah yang benar-benar
dilakukan selama pengerjaan.

## 4. Contoh Prompt yang Digunakan

Contoh berikut merangkum permintaan yang benar-benar dibahas selama
proses pengerjaan:

**Prompt 1 --- Memahami kode Quick Absensi**

> Jelaskan kode Flutter pada fitur Quick Absensi yang menggunakan
> kamera, mengambil foto, lalu mengirimkan lokasi foto ke halaman
> konfirmasi. Jelaskan bagian pentingnya untuk presentasi UTS.

**Prompt 2 --- Menganalisis error kode warna**

> Saya mendapatkan error pada `profile_screen.dart` di baris
> `Color(0xFqF4A0B0B)`. Jelaskan penyebab error dan cara memperbaikinya.

## 5. Hasil Bantuan AI dan Penyesuaian

Bantuan AI digunakan untuk memahami alur kode dan mengidentifikasi
bagian yang perlu diperiksa. Salah satu contoh konkret adalah error
konstanta warna di `profile_screen.dart`. Penulisan `0xFqF4A0B0B` tidak
valid karena terdapat huruf `q`; kode warna maroon yang dimaksud adalah
`0xFF4A0B0B`.

Pada fitur Quick Absensi, kode yang dibahas mengambil foto melalui
`takePicture()`, lalu meneruskan `image.path` ke halaman konfirmasi
untuk ditampilkan menggunakan `Image.file()`.

Pemeriksaan terhadap kode juga menunjukkan batasan implementasi saat
ini: tombol **KONFIRMASI ABSENSI** dan **Ambil Foto Ulang** pada halaman
konfirmasi sama-sama menjalankan `Navigator.pop(context)`. Dengan
demikian, berdasarkan kode yang ditinjau, tombol konfirmasi belum
menyimpan data absensi ke database dan tombol ambil foto ulang belum
secara khusus mengulang proses kamera dari halaman konfirmasi.

Pada halaman Profile, informasi pengguna masih ditulis langsung di dalam
kode (*hardcoded*). Tombol menuju `RekapAnggotaScreen` sudah menggunakan
navigasi, tetapi fungsi dan sumber data rekap perlu diperiksa dari
implementasi halaman rekap itu sendiri.

Temuan tersebut menjadi bahan evaluasi dan dasar rencana pengembangan
berikutnya, bukan klaim bahwa fitur penyimpanan absensi atau integrasi
database telah selesai.

## 6. Rencana Pengembangan

Rencana pengembangan berikutnya yang dibahas meliputi:

-   Mengimplementasikan penyimpanan data absensi.
-   Memperbaiki alur pengambilan foto ulang dan konfirmasi.
-   Menghubungkan data profil dan rekap anggota dengan sumber data yang
    sesuai.
-   Menguji kembali navigasi dan fitur aplikasi setelah perubahan
    dilakukan.

Rencana tersebut merupakan target pengembangan, bukan fitur yang
dinyatakan sudah selesai.

## 7. Pernyataan

Saya menggunakan ChatGPT sebagai alat bantu untuk memahami kode,
menganalisis error, dan mempersiapkan penjelasan proyek. Saya tetap
bertanggung jawab untuk memeriksa kesesuaian kode dengan proyek, menguji
aplikasi, memahami implementasi yang dipresentasikan, serta menjelaskan
keterbatasan fitur secara jujur.

Dokumen ini disusun berdasarkan bagian proyek dan percakapan yang telah
dibahas. Informasi tambahan mengenai kontribusi manual, hasil pengujian,
atau penggunaan AI lainnya akan saya tambahkan jika relevan dengan
proses pengerjaan yang sebenarnya.
