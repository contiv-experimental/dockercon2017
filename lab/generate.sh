#!/bin/bash

if ! [ $1 -eq $1 2>/dev/null ]
        then
            echo "Invalid input, please give integer as first parameter"
fi

echo "-----------------------------"
echo "Creating $1 POD files"
echo "-----------------------------"

for (( c=1; c<=$1; c++ ))
do
	pod_num=$c	
	if [[ $(( c / 10 )) == 0 ]]; then 
		pod_num="0${c}"
	fi

   echo "Creating file Session-pod$pod_num.md for pod$pod_num"
   sed -i -e 's/podxx/pod'"$pod_num"'/g' Session-podxx.md
   mv Session-podxx.md Session-pod$pod_num.md
   mv Session-podxx.md-e Session-podxx.md
done

