#!/bin/bash
# created by Harneet Singh

if [[ -z $1 ]]
then
	echo no argument given, using default as 10
	default=10
else
	echo $1 is set		
	default=$1

fi

checkfile(){
	if [[ -f ../inputdata ]]
	then
		echo "Empty file"
		cat /dev/null > ../inputdata
	else
		touch ../inputdata
	fi

}

generate(){
	for i in $(seq 1 $default)
	do 
		echo $i, $RANDOM >> ../inputdata
	done
}


## main 

checkfile
generate
