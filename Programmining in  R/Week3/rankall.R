rankall <- function(outcome,num="best") {
        outcome_df <- read.csv("outcome-of-care-measures.csv",colClasses = "character");
        ##new_df = outcome_df[,c(2,7,11,17,23)]
        possible = list("heart attack"=11,"heart failure"=17,"pneumonia"=23);
        h_name <- 2
        state_val <- 7
        h_attack <- 11
        h_failure <- 17
        pnemo <- 23
        
        if(!(outcome %in% names(possible))){
                stop("invalid outcome");
        }else{
                state_all <- unique(outcome_df$State)
                len_val <- length(state_all)
                df_val <- data.frame(hospital=character(len_val),state=character(len_val),stringsAsFactors = FALSE)
                i<-1;
                for(state in state_all){
                       ## print(state)
                        df_val$state[i] <- state
                        new_df = outcome_df[outcome_df$State == state,c(h_name,as.numeric(possible[outcome]))]
                        split_val = split(new_df,new_df$Hospital.Name);
                        x <- lapply(split_val,function(x) sum(as.numeric(x[,2]),na.rm=FALSE))
                        ordered <- x[order(unlist(x),decreasing = FALSE)]
                       ## ordered = ordered[!is.na(ordered)]
                        
                        if(is.na(as.numeric(num))){
                                if(num == "best"){
                                        df_val$hospital[i] <- names(ordered[1])
                                }else if(num == "worst"){
                                        df_val$hospital[i] <- names(ordered[length(ordered)])
                                }else{
                                        stop("Num invalid");
                                }
                        }else{
                                num <- as.numeric(num);
                                if(num > length(ordered)){
                                        df_val$hospital[i] <- NA
                                        NA
                                }else{
                                        df_val$hospital[i] <- names(ordered[num]);
                                }
                        }
                        i<-i+1
                }
                df_val
        }
        
}