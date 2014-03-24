# print_format2.awk
#
#  Nicer print formatting can be used to create consistant length columns
#
#  To Run: awk -f print_format2.awk ex.data 
#  Input:  example data with people, pay rate, and hours worked
#  Output: Formatted output for each line with fixed length strings:
#               <person>   $  <total_pay>

{ printf("%-8s $%6.2f\n", $1, $2*$3) }
