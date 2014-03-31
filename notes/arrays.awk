# arrays.awk
#
#  awk uses associative arrays for storing collection data. Indexes can be
#    used as keys, but data is not stored in any order based on index values
#
#  To Run: awk -f arrays.awk ex.data
#  Input:  example data with people, pay rate, and hours worked
#  Output: data from the file in reverse order by line

    { line[NR] = $0 } #lines stored based on key 'Row Number' value (not index)

END { for (i = NR; i > 0; i = i - 1)
          print line[i]
    }
