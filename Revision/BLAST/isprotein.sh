#!/usr/bin/bash

cat nem.fasta | awk '{
if (substr($1,1,1)==">")
	{
		print "this is a header line: " $0;
		hline=FNR #file number record = FNR
	}
if (FNR==hline+1)
	{
		print "first line is: " $0;
		first_seq_charac=substr($0,1,1)
		print "First character is: " first_seq_charac
		print first_seq_charac > "first_seq_charac.txt"
	}
}'
