#!/bin/bash
# Displays the colors 0-255 for background and text. 
# Also shows color for a few values > 255 so you know what happens. 
echo    
echo "Colors background 0-255+"

a=-1
b=-1
while [ $a -lt 270 ]
do
	a=`expr $a + 1`
	b=`expr $b + 1`

	if [ $b -gt 14 ]
	then
		echo -e "\\033[48;5;$a;38;5;232 m  $a  \\033[0m"
		b=0
	else
		echo -e "\\033[48;5;$a;38;5;232 m  $a  \c\\033[0m"
	fi
done
echo -e "\\033[48;5;231;38;5;4 mend \\033[0m"
echo    
echo "Colors text 0-255+"

a=-1
b=-1
while [ $a -lt 270 ]
do
	a=`expr $a + 1`
	b=`expr $b + 1`

    if [ $b -gt 14 ]
    then
    	echo -e "\\033[48;5;231;38;5;$a m $a \\033[0m"
        b=0
    else
        echo -e "\\033[48;5;231;38;5;$a m $a \c\\033[0m"
    fi
done

echo -e "\\033[48;5;231;38;5;232 mend \\033[0m"
echo    
echo    
