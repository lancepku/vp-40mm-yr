#! /bin/bash                                                                    
i=`awk '{print $2}' /proc/loadavg`
i=${i%.*}

while [ $i  -gt  3  ] ; do #-lt means greater than                              

        echo machine is too busy. load avg of the last 5 mins is $i
        i=`awk '{print $2}' /proc/loadavg`
        i=${i%.*}
        date
        sleep 100

done
echo time to start flac
#### call flac
