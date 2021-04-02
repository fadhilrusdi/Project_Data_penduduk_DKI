library(ggplot2)

#Membaca File csv
penduduk.dki <- read.csv('D:/FILE/DATA ANALYST/DATA SET/datakependudukandki-dqlab.csv', sep=",")
str(penduduk.dki)

#Melakukan agregasi
p <- aggregate(x=list(JUMLAH=penduduk.dki$JUMLAH), 
               FUN=sum, 
               by = 
                 list(NAMA.KABUPATEN.KOTA=penduduk.dki$NAMA.KABUPATEN.KOTA,
                      JENIS.KELAMIN=penduduk.dki$JENIS.KELAMIN))

#membuat plot grafik
plot.dki <- ggplot(data=p, aes(x = NAMA.KABUPATEN.KOTA,y = JUMLAH,
                                          fill = JENIS.KELAMIN))

plot.dki + geom_bar(stat="identity", position="dodge")

plot.dki + labs(title="Jumlah Penduduk DKI Jakarta Umur > 35 - Tahun 2013", 
                            x="Kabupaten / Kota", y="Jumlah Penduduk")

plot.dki + theme(axis.text.x = element_text(angle=45,vjust = 0.5), 
                             plot.title = element_text(hjust=0.5))

plot.dki + geom_text(position = position_dodge(1.2))

plot.dki

