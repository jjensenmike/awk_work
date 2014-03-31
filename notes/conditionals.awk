# conditionals.awk
#
#  Conditionals differ from input selection because they act as a filter within
#    the program itself. The input selection statements decide what lines to
#    process, conditionals within the program decide specific actions to take
#    on those lines.
#
#  To Run: awk -f conditionals.awk ex.data
#  Input:  example data with people, pay rate, and hours worked
#  Output: If there are employees making >= $5 an hour, prints the number of
#              employees, total and average pay, otherwise prints "no employees
#              are paid $5/hour or more"

$2 >= 5 { n = n + 1; pay = pay + $2 * $3 }
END    { if (n > 0)
             print n, "employees, total pay is ", pay, "average pay is", pay/n
         else
             print "no employees are paid $5/hour or more"
       }
