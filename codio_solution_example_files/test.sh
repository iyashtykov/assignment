# CODIO SOLUTION BEGIN
#!/bin/bash

exec 10<&0
# stdin replaced with a file supplied as a first argument
exec < $1
# remember the name of the input file
in=$1

# init
file="current_line.txt"
let count=0



# CODIO SOLUTION END
