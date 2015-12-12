complete <- function(directory,id=1:332){
        output <- data.frame(id=1:length(id),nobs=1:length(id))
        index <- 1
        for(val in id){
                
                str <- paste(getwd(),"/",directory,"/",val,".csv",sep = "")
                if(val < 10){
                        str <- paste(getwd(),"/",directory,"/","0","0",val,".csv",sep = "")
                }
                if(val < 100 && val >= 10){
                        str <- paste(getwd(),"/",directory,"/","0",val,".csv",sep = "")
                }
                df = read.csv(str)
                output[index,1] = val
                arr = vector("logical",length(ncol(df)))
                arr <- !arr
                for(i in 1:ncol(df)){
                        arr = arr & !is.na(df[,i])
                }
                output[index,2] = length(df[arr,1])
                index <- index +1
        }
        output
}