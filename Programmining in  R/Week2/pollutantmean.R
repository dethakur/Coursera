pollutantmean <- function(directory,pollutant,id=1:332){
        mean_val <- c()
        for(val in id){
                
                str <- paste(getwd(),"/",directory,"/",val,".csv",sep = "")
                if(val < 10){
                        str <- paste(getwd(),"/",directory,"/","0","0",val,".csv",sep = "")
                }
                if(val < 100 && val >= 10){
                        str <- paste(getwd(),"/",directory,"/","0",val,".csv",sep = "")
                }
                
                df <- read.csv(str)
                a <- df[pollutant]
                a <- a[!is.na(a)]
                mean_val <- c(mean_val,a)
                
        }
        mean(mean_val)
}