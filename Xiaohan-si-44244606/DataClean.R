write.csv(d,file="./Desktop/d.csv",quote = F,row.names = F, col.names = F)
write.csv(e,file="./Desktop/e.csv",quote = T,row.names = T, col.names = F)

write.csv(sensor2,file="./Desktop/sensor2.csv",quote = T,row.names = T, col.names = F)

sensor=sensor[,-c(1,2,17,54)]
names(sensor)=c(1:51)
sensor2=t(sensor)
sensor2=sensor2[-15,]
write.csv(sensor2,file="~/Desktop/2019_S2/ITEC876/new_data/sensor2.csv",
          quote = F,row.names = T, col.names = F)

test2=t(test[-1,])
write.csv(test2[-1,],file="./Desktop/test3.csv",quote = F,row.names = F, col.names = F)
write.table(test3,file="./Desktop/test3.csv",quote = F,row.names = F, col.names = F)


names(test)=c(1:4)

# path <- "./Desktop/2019_S2/ITEC876/new_data/historical-hourly-weather-data/"
# files <- list.files(path=path, pattern="*.csv")
# for(file in files)
# {
#   perpos <- which(strsplit(file, "")[[1]]==".")
#   assign(
#     gsub(" ","",substr(file, 1, perpos-1)), 
#     read.csv(paste(path,file,sep="")))
# }


names(pressure)=c(1:36)
names(temperature)=c(1:36)
names(wind_direction)=c(1:36)
names(wind_speed)=c(1:36)
names(humidity)=c(1:36)
humidity2=t(humidity[,-1])
pressure2=t(pressure)
temperature2=t(temperature)
wind_direction2=t(wind_direction)
wind_speed2=t(wind_speed)

write.csv( humidity2 , file="~/Desktop/hourly-weather2/humidity2.csv",
           quote = F,row.names = T, col.names = F,sep = "\t")
write.csv( pressure2 , file="./Desktop/hourly-weather2/pressure2.csv",
           quote = F,row.names = T, col.names = F)
write.csv( temperature2 , file="./Desktop/hourly-weather2/temp2.csv",
           quote = F,row.names = T, col.names = F)
write.csv( wind_direction2 , file="./Desktop/hourly-weather2/wind1-2.csv",
           quote = F,row.names = T, col.names = F)
write.csv( wind_speed2 , file="./Desktop/hourly-weather2/wind2-2.csv",
           quote = F,row.names = T, col.names = F)

names(AEP_hourly)=c(1)
names(COMED_hourly)=c(1)
names(DOM_hourly)=c(1)
names(DUQ_hourly)=c(1)
names(EKPC_hourly)=c(1)
names(FE_hourly)=c(1)

AEP=t(AEP_hourly)
COMED=t(COMED_hourly)
DOM=t(DOM_hourly)
DUQ=t(DUQ_hourly)
EKPC=t(EKPC_hourly)
FE=t(FE_hourly)

write.csv( AEP , file="Desktop/876/cleaned/AEP.tsv",
           quote = F,row.names = T, col.names = F,sep = "\t")
write.csv( AEP , file="Desktop/876/cleaned/AEP2.csv",
           quote = F,row.names = T, col.names = F,sep = ' ')
write.csv( COMED , file="./Desktop/energy2/COMED.csv",
           quote = F,row.names = T, col.names = F)
write.csv( DOM , file="./Desktop/energy2/DOM.csv",
           quote = F,row.names = T, col.names = F)
write.csv( DUQ , file="./Desktop/energy2/DUQ.csv",
           quote = F,row.names = T, col.names = F)
write.csv( EKPC , file="./Desktop/energy2/EKPC.csv",
           quote = F,row.names = T, col.names = F)
write.csv( FE , file="./Desktop/energy2/FE.csv",
           quote = F,row.names = T, col.names = F)



filenames <- list.files("Macintosh HD/Users/xiaohan.s/Desktop/2019_S2/ITEC876/new_data/historical-hourly-weather-data/", pattern = ".csv") 
names()=c(1)datalist <- lapply(filenames, function(name) { 
  read.table(paste("～/Desktop/2019_S2/ITEC876/new_data/historical-hourly-weather-data/", name, sep = "")) 
})



write.table(x, file = "", append = FALSE, quote = TRUE, sep = "",
            eol = "\n", na = "NA", dec = ".", row.names = TRUE,
            col.names = TRUE, qmethod = c("escape", "double"),
            fileEncoding = "")










