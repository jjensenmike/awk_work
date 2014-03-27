# built_ins.awk
#
#  awk includes a number of built-in variables outside of control flow BEGIN
#    and END. They include NF (number of record fields), FILENAME,
#    NR (number of records read), and FS (field separator)
#
#  To Run: awk -f built_ins.awk ex.data
#  Input:  example data with people, pay rate, and hours worked
#  Output: <filename> ROW <row_number> contains <field_count> FIELDS 

BEGIN { FS = "\t" }
      { printf("%s ROW %d contains %d FIELDS\n", FILENAME, NR, NF) }
