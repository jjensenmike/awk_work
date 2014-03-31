# for.awk
#
#    A for loop implementation of the while loop compound interest program  
#
#  To Run: awk -f for.awk
#  Input:  A triplet + <enter> on proceeding lines: <amount> <rate> <time>
#            Ex. 1000 .06 5 
#  Output: Total value accrued over each time period 

{   for (i = 1; i <= $3; i = i + 1)
        printf("\t%.2f\n", $1 * (1 + $2) ^ i)
}
