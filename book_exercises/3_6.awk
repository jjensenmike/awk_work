# 3_6.awk 
#   input:  numbers between 0 and 100
#   output: histogram of deciles scaled into a set number of buckets

    { 
      x[int($1)]++
      count++
    }

END { BUCKETS = 5
      MAX_BUCKET = count/(BUCKETS-1)
      min = max = 0
      for (i = 0; i <= 100; i++)
          if (i == 100){
              temp_count += x[100]
              printf(" %2d - 100: %3d %s\n",
                  min, temp_count, rep(temp_count,"*"))
          }    
          else if ((temp_count + x[i]) > MAX_BUCKET) {
              printf(" %2d - %2d: %3d %s\n",
                  min, max, temp_count, rep(temp_count,"*"))
              temp_count = x[i] 
              min = i
              max = i
          }
          else {
              temp_count += x[i]
              max = i
          }    
    }

function rep(n,s,   t) { #return string on n s's
    while (n-- > 0)
        t = t s
    return t
}
