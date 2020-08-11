#!/bin/bash
#delete first six lines of meme files and remove time stamp at end of meme file
#Remove empty lines, then add newlines to the top of the file to get proper spacing
while getopts i:o: option; do
		case "${option}" in
			i) INFILE=${OPTARG};;
			o) OUTFILE=${OPTARG};;
		esac
	done

echo Converting motifs in $INFILE to MEME motif format and saving results to $OUTFILE...
sed 1,6d $INFILE | sed 's/Version/version/g' | sed '/Time.*/d' | sed 's/score=.*/E= 0/g' | sed 's/ [A-Z]* ProSampler$//g' | sed '/^[[:space:]]*$/d' | sed -e 's/MOTIF/\nMOTIF/g' | sed -e 's/Background/\nBackground/g' | sed -e 's/Strands/\nstrands/g' | sed -e 's/ALPHABET/\nALPHABET/g' > $OUTFILE
echo Done.
