library(ggplot2)

#Membaca data csv dan dimasukkan ke variable penduduk.dki
penduduk.dki <- read.csv('D:/FILE/DATA ANALYST/DATA SET/data_kepadatan_dan_luas_wilayah_per_kelurahan_di-provinsi_dki_jakarta_tahun_2013.csv', sep=",")

#Menambahkan data dan aesthetic mapping
plot.dki <- ggplot(data=penduduk.dki, aes(x = kepadatan..jiwa.km2.,  
                                          fill=nama.kabupaten.kota))
#Menambahkan layer
plot.dki <- plot.dki + geom_histogram(binwidth=10000)
plot.dki <- plot.dki + labs(x="Kepadatan Jiwa (km2)", y="Jumlah Kelurahan", color="Kabupaten/Kota")
plot.dki + facet_wrap( ~ nama.kabupaten.kota, ncol=2)
