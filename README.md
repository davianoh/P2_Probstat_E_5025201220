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
![image](https://user-images.githubusercontent.com/71868354/170876793-def588da-f250-4526-ab19-77e83b5f0b07.png)
>Pertama kita cari selisih dari kedua data sebelum dan sesusah, lalu kita gunakan fungsi sd() untuk mendapatkan standar deviasinya

### b
carilah nilai t (p-value)
``` R
t.test(x, y, alternative = "two.sided", paired = TRUE, conf.level = 0.95)
```
![image](https://user-images.githubusercontent.com/71868354/170876832-8b22b599-2a8b-42af-8fd3-83c8399d3b7b.png)
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
``` R
tsum.test(mean.x=23500, s.x=3900, n.x=100, mu=20000, alternative = "greater")
```
![image](https://user-images.githubusercontent.com/71868354/170876879-ba36838f-16b7-4a39-b8e5-09186e210162.png)
>Dengan memakai fungsi bawaan R untuk menghitung p-value hasil t-test, didapatkan hasil nilai t = 8.9744, nilai dan p-value = 9.437e-15

### c
Buatlah kesimpulan berdasarkan P-Value yang dihasilkan!
>Didapatkan p-value = 9.437e-15. Maka karena nilai p-value lebih kecil dari alpha, dapat disimpulkan h0 ditolak dan h1 diterima (clain mean di atas 20000)

## 3
Diketahui perusahaan memiliki seorang data analyst ingin memecahkan
permasalahan pengambilan keputusan dalam perusahaan tersebut. Selanjutnya
didapatkanlah data berikut dari perusahaan saham tersebut.
Dari data diatas berilah keputusan serta kesimpulan yang didapatkan dari hasil
diatas. Asumsikan nilai variancenya sama, apakah ada perbedaan pada
rata-ratanya (α= 0.05)? Buatlah :

### a
H0 dan H1
``` R
z_h0 <- (3.64 - 0) / (1.67 / sqrt(19))
z_h0
z_h1 <- (2.79 - 0) / (1.32 / sqrt(27))
z_h1
```
![image](https://user-images.githubusercontent.com/71868354/170877012-86a480fa-8292-439f-8d5f-3688d67b1a84.png)

>Nilai h0 dan h1 didapatkan dengan menggunakan rumus (mean - x) / (sd / sqrt(n))

### b
Hitung Sampel Statistik
``` R
tsum.test(mean.x=3.64, s.x = 1.67, n.x = 19, mean.y =2.79 , s.y = 1.32, n.y = 27, alternative = "greater", var.equal = TRUE)
```
![image](https://user-images.githubusercontent.com/71868354/170872957-1317b40e-2732-4943-9ec5-ae1e2c4c1a84.png)
>Didapatkan sampel statistik sebagai berikut dengan menggunakan fungsi bawaan R tsum.test


### c
Lakukan Uji Statistik (df =2)
``` R
plotDist(dist='t', df=2, col="blue")
```
>Dengan mudah dapat memakai fungsi plotDist dengan df = 2

### d
Nilai Kritikal
``` R
qchisq(p = 0.05, df = 2, lower.tail=FALSE)
```
![image](https://user-images.githubusercontent.com/71868354/170877141-27da2056-6d29-4c8f-b833-14c5c70c0ef0.png)

>Dengan menggunakan fungsi bawaan R qchisq, dapat menghitung nilai x required untuk mencapai area khusus yang dicari(kritikal)

### e
Keputusan
Keputusan yang diambil berdasarkan data statistik yang telah didapat dan ditampilkan 

### f
Kesimpulan
Perbedaan rata-rata dari kedua data tidak signifikan berdasarkan statistik 


## 4
Seorang Peneliti sedang meneliti spesies dari kucing di ITS . Dalam penelitiannya
ia mengumpulkan data tiga spesies kucing yaitu kucing oren, kucing hitam dan
kucing putih dengan panjangnya masing-masing.
Jika :
diketahui dataset https://intip.in/datasetprobstat1
H0 : Tidak ada perbedaan panjang antara ketiga spesies atau rata-rata panjangnya
sama
Maka Kerjakan atau Carilah:

### a
Buatlah masing masing jenis spesies menjadi 3 subjek "Grup" (grup 1,grup
2,grup 3). Lalu Gambarkan plot kuantil normal untuk setiap kelompok dan
lihat apakah ada outlier utama dalam homogenitas varians. <br>
![image](https://user-images.githubusercontent.com/71868354/170874593-eb95e7c1-e642-4566-9d26-491ee79eaa88.png)
>Didapatkan hasil plot seperti diatas. Langkah pertama yaitu mendapatkan data dari link dengan cara read.table, lalu kita groupkan berdasarkan subset sesuai soal, kemudian kita tampilkan dengan qqnorm dan qqline untuk tiap group

### b
carilah atau periksalah Homogeneity of variances nya , Berapa nilai p yang
didapatkan? , Apa hipotesis dan kesimpulan yang dapat diambil ? <br>
![image](https://user-images.githubusercontent.com/71868354/170874753-1e9acd59-ee92-4bd2-a9b7-52e25ddd9616.png)
>Nilai p yang didapatkan adalah 0.8054


### c
Untuk uji ANOVA (satu arah), buatlah model linier dengan Panjang versus
Grup dan beri nama model tersebut model 1. <br>
![image](https://user-images.githubusercontent.com/71868354/170874954-edf276d3-273f-4431-9f8d-8b4ee558e711.png)


### d
Dari Hasil Poin C, Berapakah nilai-p ? , Apa yang dapat Anda simpulkan
dari H0?
>p-value = 0.0013, sehingga dapat disimpulkan karena 0.0013 < 0.05 (confidence interval), maka H0 ditolak, terbukti ada perbedaan panjang tetapi belum diketahui grup kucing mana yang memiliki perbedaan

### e
Verifikasilah jawaban model 1 dengan Post-hoc test Tukey HSD, dari nilai p
yang didapatkan apakah satu jenis kucing lebih panjang dari yang lain? Jelaskan <br>
![image](https://user-images.githubusercontent.com/71868354/170875111-a2428e2e-13f6-4e2e-87a1-5f64586d58e2.png)
>Jika perbandingan antar spesies kucing memiliki nilai p > 0.05, maka kedua spesies memiliki panjang yang sama. Sedangkan jika p < 0.05, maka spesies berbeda. Contohnya dapat dilihat dari hasilnya, kucing putih dan kucing oren memiliki panjang sama p = 0.8726158. Sedangkan kucing hitam berbeda. Melalui tabel selisih, ditemukan bahwa kucing hitam paling pendek


### f
Visualisasikan data dengan ggplot2 <br>
![image](https://user-images.githubusercontent.com/71868354/170875361-b668b539-9e99-42c7-98df-29c72f32c993.png)


## 5
Data yang digunakan merupakan hasil eksperimen yang dilakukan untuk
mengetahui pengaruh suhu operasi (100˚C, 125˚C dan 150˚C) dan tiga jenis kaca
pelat muka (A, B dan C) pada keluaran cahaya tabung osiloskop. Percobaan
dilakukan sebanyak 27 kali dan didapat data sebagai berikut: Data Hasil
Eksperimen. Dengan data tersebut:
### a
Buatlah plot sederhana untuk visualisasi data <br>
![image](https://user-images.githubusercontent.com/71868354/170875926-81a639a3-c53e-4587-82ce-82133cf98264.png)
>Visualisasi memakai function qplot

### b
Lakukan uji ANOVA dua arah <br>
![image](https://user-images.githubusercontent.com/71868354/170876072-ce1e9519-aa9a-4901-909b-0d13fcbda8de.png)
![image](https://user-images.githubusercontent.com/71868354/170875977-73f1f650-f969-41fb-9106-1f5dc85d3085.png)
>Memakai function aov untuk melakukan analysis of variance pada data yang didapat

### c
Tampilkan tabel dengan mean dan standar deviasi keluaran cahaya untuk
setiap perlakuan (kombinasi kaca pelat muka dan suhu operasi) <br>
![image](https://user-images.githubusercontent.com/71868354/170876375-e2d5213d-a969-4a25-9a28-d5d67a725729.png)
>Memakai function kode sebagai berikut : 
``` R
data_summary <- group_by(GTL, Glass, Temp) %>%
  summarise(mean=mean(Light), sd=sd(Light)) %>%
  arrange(desc(mean))
print(data_summary)
```

### d
Lakukan uji Tukey <br>
![image](https://user-images.githubusercontent.com/71868354/170876479-fe118b20-324c-4fd1-9fbe-8ce4c34d2e59.png)
>Didapatkan potongan hasil uji Tukey sebagai berikut

### e
Gunakan compact letter display untuk menunjukkan perbedaan signifikan
antara uji Anova dan uji Tukey
``` R
tukey.cld <- multcompLetters4(anova, tukey)
print(tukey.cld)
cld <- as.data.frame.list(tukey.cld$`Glass:Temp_Factor`)
data_summary$Tukey <- cld$Letters
print(data_summary)
write.csv("GTL_summary.csv")
```
>Dibuat compact display lalu ditampilkan dan di write dengan fungsi write.csv
