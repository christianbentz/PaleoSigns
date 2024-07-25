rrate <- function(data, method = c("lsmo", "sproat")){
  # create data frame with frequency counts  
  freq.df <- as.data.frame(table(data))
  if (method == "sproat"){
    # get the overall number of repetitions (i.e. adjacent and non-adjacent) 
    # as the sum of frequency counts *for each type* minus 1.
    R <- sum(freq.df$Freq-1)
  } else if(method == "lsmo") {
    # get the possible number of repetitions as the length of the sequence minus one "lsmo".
    R <- length(data)-1
  } else {
    print("Error: wrong method value")
  }
  # calculate the number of adjacent repetitions "r" along the sequence
  r = 0
  if (length(data) > 1){
    for (i in 1:(length(data)-1)){
      if (data[i] == data[i+1]){
        r = r + 1
      } else {
        r = r + 0
      }
    }
  } else {
    r = r  
  }
  # calculate the repetition measure ("r/R" in Sproat)
  # note: since the ratio is not defined for R = 0 (will give NaN), 
  # we here hard code rrate = 0 in this case  
  if (R == 0){ 
    rrate = 0
  } else {
    rrate = r/R
  }
  #print(rrate)
}