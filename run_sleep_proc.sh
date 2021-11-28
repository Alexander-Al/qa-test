#!/bin/sh
file_name_prefix=custom_sleep_
process_count=10
sleep_time=10


while getopts n:p:s: flag
do
    case "${flag}" in
        n) file_name_prefix=${OPTARG};;
        p) process_count=${OPTARG};;
        s) sleep_time=${OPTARG};;
    esac
done

echo "file_name_prefix : $file_name_prefix";
echo "process_count : ${process_count}";
echo "sleep_time : $sleep_time";


for each in $(seq 1 ${process_count})
do 
    
    echo "Proccess name to run : ./${file_name_prefix}${each} "
    ./${file_name_prefix}${each};
    sleep ${sleep_time};
done
