#!/usr/bin/env bash

mkdir bashfiles
paf=bashfiles/

for n in {1..10}
do
	far=archieve$n.txt
	touch "$far"
	echo -e "\tThe file number [ $n ] created."
	echo "Text for the file number [$n] has been added." >"$far"
	mv "$far" $paf
	sleep 1
done

echo "Compressing files..."
cd $paf || exit
zip -q myfiles ./*
sleep 1
echo "==============================="
echo "$PWD =>"
ls && cd .. && echo "DONE!"
