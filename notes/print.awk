# print.awk
#
#  'print' is used to print out columns or values after column operations.
#    Columns are called using $<column_number>, indexed starting at 1
#
#  To Run: awk -f print.awk ex.data
#  Input:  example data with people, pay rate, and hours worked
#  Output: column 1 (name) and column 2*3 (pay rate * hours worked) 

{ print $1, $2*$3}
