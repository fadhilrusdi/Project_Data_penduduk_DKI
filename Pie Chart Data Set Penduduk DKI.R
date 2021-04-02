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

#Plot grafik pie chart
plot.dki <- ggplot(data=p, aes(x="", y=JUMLAH, fill = NAMA.KABUPATEN.KOTA))

plot.dki <- plot.dki + geom_bar(width = 1, stat = "identity")
plot.dki <- plot.dki + coord_polar("y", start=0)
plot.dki
