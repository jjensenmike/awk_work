# begin_end.awk
#
#  BEGIN and END are statements used for actions before or after the core
#    program is run. BEGIN acts before the first line of the first file is
#    read and END acts after the last line of the last file has been processed
#
#  To Run: awk -f begin_end.awk
#  Input:  example data with people, pay rate, and hours worked
#  Output: Table of people, rate, and hours worked with header and total hours

BEGIN { print "NAME	RATE	HOURS"; print " "}
      { print }
      { total += $3 }
END   { printf("\nTOTAL HOURS:	%d\n", total) }
