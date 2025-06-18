To run program compile file using make then run the executable with the txt file in the argument
ex: 
make
./a.out Programing-Project-1.txt

note, ensure no extra lines are added in txt file or the last line will be duplicated and executed again

This program reads from a file and takes executes the inputed operator on two inputed hex values. 
For each added hexvalue that overflow's an asterisk overflow is added to note and handle that issue.

Specific Overflow errors:
On the first overflow (line 2) the error is due to the hex value being exactly the maximum the placevalue can hold.
On the second overflow (line 3) the error occurs due to the carry requried in the additon that requires a new placeholder beyond the 8bit limit to hold. 
On the last overflow(line 5) I am unsure of that error.