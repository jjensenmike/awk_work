# 3_4 - totals values in second column for
#         keys in first column

    { sum[$1] += $2}

END { for (l in sum) printf("%s\t%d\n", l, sum[l]) | "sort -k 2 -n" }
