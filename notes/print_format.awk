# print_format.awk
#
#  'printf' is used to format the output. Output formatting is very similar to
#    formatting in C, placeholders are used in the original string for variable
#    types, values are provided after the string and replaced by the program
#
#  To Run: awk -f print_format.awk ex.data 
#  Input:  example data with people, pay rate, and hours worked
#  Output: Formatted output for each line:
#               Pay for <person> is $<total_pay>

{ printf("Pay for %s is $%.2f\n", $1, $2*$3) }
