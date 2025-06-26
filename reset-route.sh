## Walk thru the interfaces to turn them off and on again ##

resetroute () {
    echo "Flushing routes...";
    for i in $(ifconfig | egrep -o "^[a-z].+\d{1}:" | sed 's/://');
    do
        sudo ifconfig "$i" down;
    done;
    sudo route -n flush;
    for i in $(ifconfig | egrep -o "^[a-z].+\d{1}:" | sed 's/://');
    do
        sudo ifconfig "$i" up;
    done
}
