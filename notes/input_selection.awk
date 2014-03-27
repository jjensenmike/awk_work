# input_selection.awk
#
#  Code before curly braces ('{') act as a filter to only pass specific lines
#    to the rest of the program
#
#  To Run: awk -f input_selection.awk ex.data
#  Input:  example data with people, pay rate, and hours worked
#  Output: data for people whose pay rate >= $5.00/hr

$2 >= 5 {print}
