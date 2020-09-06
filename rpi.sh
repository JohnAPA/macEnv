PI=raspberrypi.local 
IPADDR=$(
    /sbin/ping -c 1 $PI |
        sed -En '1s/^PING 
[^ ]+ \(([0-9.]+)\): [0-9]+ 
data bytes$/\1/p'
)
