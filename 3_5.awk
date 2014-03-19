# 3_5.awk 
#   input:  numbers between 0 and 100
#   output: histogram of deciles scaled to the line length

    { 
      x[int($1/10)]++ 
      count++
    }

END { 
      printf("Count: %3d\n",count)
      for (i = 0; i < 10; i++)
          printf(" %2d - %2d: %3d %s\n",
              10*i, 10*i+9, x[i], rep((x[i]/count)*40*length(x),"*"))
      printf("100:      %3d %s\n", x[10], rep((x[10]/count)*40*length(x),"*"))
    }

function rep(n,s,   t) { #return string on n s's
    while (n-- > 0)
        t = t s
    return t
}
