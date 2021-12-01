#!/bin/bash
process_name_prefix=Custom-Process_
process_count=5
sleep_time=360


while getopts n:p:s: flag
do
    case "${flag}" in
        n) process_name_prefix=${OPTARG};;
        p) process_count=${OPTARG};;
        s) sleep_time=${OPTARG};;
    esac
done

echo "process_name_prefix : $process_name_prefix";
echo "process_count : ${process_count}";
echo "sleep_time : $sleep_time";


for each in $(seq 1 ${process_count})
do 
    
    echo "Proccess name to run : ./${process_name_prefix}${each} "
    bash -c "exec -a ${process_name_prefix}${each} sleep ${sleep_time} &"
done
