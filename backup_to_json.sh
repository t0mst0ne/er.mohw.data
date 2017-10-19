#!/bin/bash
year=$(date +'%Y')
#year=$(date +'2015')

year=2017
END=9
for i in $(seq 1 $END);
	do echo $i ;
	mkdir $year.$i ;
	cp ../er.mohw/backup/$year-0$i* $year.$i ;
	python3 ../er.mohw/clerify.py --dir $year.$i --output $year.$i  ;
done
END2=12
for i in $(seq 10 $END2);
	do echo $i ;
	mkdir $year.$i ;
	cp ../er.mohw/backup/$year-$i* $year.$i ;
	python3 ../er.mohw/clerify.py --dir $year.$i --output $year.$i  ;
done
