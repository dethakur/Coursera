best <- function(state, outcome) {
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
                new_df = outcome_df[outcome_df$State == state,c(h_name,as.numeric(possible[outcome]))]
                if(nrow(new_df) == 0){
                        stop("invalid state");   
                }
                split_val = split(new_df,new_df$Hospital.Name);
                x <- lapply(split_val,function(x) sum(as.numeric(x[,2]),na.rm=FALSE))
                ordered <- x[order(unlist(x),decreasing = FALSE)]
                names(ordered[1])
        }
        
}