sleep_time=$1
if [ $# -eq 0 ]
        then
        echo "No delay argument was suppliyed, using default 1s"
        sleep_time=1
fi
echo This processes will sleep for the next : ${sleep_time}
sleep ${sleep_time}
