#!/usr/bin/bash

#### Subject Accession, alignment length or percent ID for all HSPs

file="blastoutput2.out"

read -p "print subject accession 1 alignment length 2 or percent ID 3 for all HSPs? " num

for n in ${num}
do
if [[ ${n} == *1* ]]
then
	echo -e "Accessions are: $(cut -f2 ${file})" 
	elif [[ ${n} == *2* ]]
	then
		echo -e "Alignment lengths are: $(cut -f4 ${file})"
		elif [[ ${n} == *3* ]]
		then
			echo -e "% IDs are: $(cut -f3 ${file})"
		fi
	done

####### HSPs with more than n mismatches AND fewer than n amino acids #######
read -p "HSPs with more than __ mismatches? " mm
read -p "HSPs with fewer than __ amino acids? " aa

while read query subject percentID length mis gap qstart qend sstart send evalue bit
do
	if [[ ${mis} -gt ${mm} && ${length} -lt ${aa} ]]
	then
		echo -e "${subject}\t${mis}\t${length}"
	fi
done < blastoutput2.out > mismatches.txt

cat mismatches.txt | sort -rnk2,3
