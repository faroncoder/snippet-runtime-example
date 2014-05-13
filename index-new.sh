#!/bin/bash
binpull="dat"
### $binpull is where you keep your individualized snippets as external files
##########################

echo -n "which type template ([h]tml|[p]hp|[j]query)? "
read typetemp
if [ $typetemp == "h" ]
        then
	filenode="index.html"
        cp $binpull/html5.txt $PWD/$filenode
        echo "$PWD/$filenode created"
        exit 0
fi
if [ $typetemp == "p" ]
        then
        filenode="index.php"
        cp $binpull/php.txt $PWD/$filenode
        echo "$PWD/$filenode created"
        exit 0
fi
if [ $typetemp == "j" ]
        then
        filenode="index.js"
        cp $binpull/jquery.txt $PWD/$filenode
        echo "$PWD/$filenode created"
        exit 0
fi
exit 0
