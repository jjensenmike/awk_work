# while.awk
#
#  awk provide control flow statements similar to those available in C,
#    including if-else statements, for loops, while loops, and do-while loops.
#    while loops continue until a condition is met
#
#  To Run: awk -f while.awk
#  Input:  A triplet + <enter> on proceeding lines: <amount> <rate> <time>
#            Ex. 1000 .06 5 
#  Output: Total value accrued over each time period 

{   i = 1
    while (i <= $3) {
        printf("\t%.2f\n", $1 * (1 + $2) ^ i)
        i = i + 1
    }
}
