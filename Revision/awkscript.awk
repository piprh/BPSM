#!/usr/bin/awk -f
BEGIN {
FS="\t";OFS="_"; #set FS and OFS values
system("rm awkout*")
}
{count++; #add one to count
	if($1 != "#")
	{
		print "doing "count ; #check first field from the file isnt a hash
		total=total + ($6 * $12) #do a calculation for each line that does not start with hash
	}
}
END {
	print "Total "count" lines: " int(total) > "awkout.txt" ;
	print "script run complete." >> "awkout.txt" ; #append number of count lines and end message to file
	print "script run complete."
	system("ls -alrt *awk*") #do command ls -alrt for files containing awk
}

