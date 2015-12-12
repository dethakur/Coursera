corr <- function(directory,threshold=0){
        index = 1:332
        crr_val <- c()
        for(val in index){
                c_data <- complete(directory,val)
                
                str <- paste(getwd(),"/",directory,"/",val,".csv",sep = "")
                if(val < 10){
                        str <- paste(getwd(),"/",directory,"/","0","0",val,".csv",sep = "")
                }
                if(val < 100 && val >= 10){
                        str <- paste(getwd(),"/",directory,"/","0",val,".csv",sep = "")
                }
                df = read.csv(str)
                sulp <- df["sulfate"]
                nitr <- df["nitrate"]
                if(c_data["nobs"] > threshold){
                        v_s <- !is.na(sulp)
                        v_n <- !is.na(nitr)
                        v <- v_s & v_n
                        cor_val <- cor(sulp[v],nitr[v])
                        crr_val <- c(crr_val,cor_val)
                }
        }
        if(length(crr_val) == 0){
                crr_val <- vector("numeric",length =0)
        }
        crr_val
}