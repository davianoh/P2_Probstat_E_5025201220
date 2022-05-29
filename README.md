# P2_Probstat_E_5025201220
Nama : Davian Benito
Nrp : 5025201220

## Soal 1
Seorang peneliti melakukan penelitian mengenai pengaruh aktivitas 𝐴 terhadap
kadar saturasi oksigen pada manusia. Peneliti tersebut mengambil sampel
sebanyak 9 responden. Pertama, sebelum melakukan aktivitas 𝐴, peneliti mencatat
kadar saturasi oksigen dari 9 responden tersebut. Kemudian, 9 responden tersebut
diminta melakukan aktivitas 𝐴. Setelah 15 menit, peneliti tersebut mencatat kembali
kadar saturasi oksigen dari 9 responden tersebut. Berikut data dari 9 responden
mengenai kadar saturasi oksigen sebelum dan sesudah melakukan aktivitas 𝐴
Berdasarkan data pada tabel diatas, diketahui kadar saturasi oksigen dari
responden ke-3 ketika belum melakukan aktivitas 𝐴 sebanyak 67, dan setelah
melakukan aktivitas 𝐴 sebanyak 70.

### a
Carilah Standar Deviasi dari data selisih pasangan pengamatan tabel
diatas
``` R
x <- c(78, 75, 67, 77, 70, 72, 78, 74, 77)
y <- c(100, 95, 70, 90, 90, 90, 89, 90, 100)
selisih <- abs(x-y)
sd(selisih)
```
>Pertama kita cari selisih dari kedua data sebelum dan sesusah, lalu kita gunakan fungsi sd() untuk mendapatkan standar deviasinya

### b
carilah nilai t (p-value)
``` R
t.test(x, y, alternative = "two.sided", paired = TRUE, conf.level = 0.95)
```
>Kita dapat menghitung nilai t dengan fungsi bawaan dari R t.test dan memasukkan nilai parameter sesuai soal


### c
tentukanlah apakah terdapat pengaruh yang signifikan secara statistika
dalam hal kadar saturasi oksigen , sebelum dan sesudah melakukan
aktivitas 𝐴 jika diketahui tingkat signifikansi 𝛼 = 5% serta H0 : “tidak ada
pengaruh yang signifikan secara statistika dalam hal kadar saturasi
oksigen , sebelum dan sesudah melakukan aktivitas 𝐴”
>Berdasarkan hasil yang didapat dari perhitungan 1b, dapat disimpulkan bahwa tidak terdapat pengaruh yang signifikan dalam hal kadar saturasi oksigen

## 2
Diketahui bahwa mobil dikemudikan rata-rata lebih dari 20.000 kilometer per tahun.
Untuk menguji klaim ini, 100 pemilik mobil yang dipilih secara acak diminta untuk
mencatat jarak yang mereka tempuh. Jika sampel acak menunjukkan rata-rata
23.500 kilometer dan standar deviasi 3900 kilometer. (Kerjakan menggunakan
2library seperti referensi pada modul)

### a
Apakah Anda setuju dengan klaim tersebut?
>Setuju

### b
Jelaskan maksud dari output yang dihasilkan!


### c
Buatlah kesimpulan berdasarkan P-Value yang dihasilkan!

