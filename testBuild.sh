#! /bin/bash

javac CurrencyConverter.java

bugs=0 #amount of bugs (to increment)




#CASE 1 a)
IN1='dollars 1'

EO1="Invalid input. Ending program..."

AO1=$(java CurrencyConverter $IN1)

if [[ $AO1 == $EO1 ]]
then
	echo "Test passed"
else
	echo "Test failed"
	bugs=$((bugs + 1))
fi
echo  "current bugs detected are" $bugs 




#CASE 2 b1)

IN2='1 euros'

EO2="1.0 Euros = 1.31 Dollars"
AO2=$(java CurrencyConverter $IN2)
AO2=${AO2:0:24}

echo "AO2 is" $AO2
echo "EO2 is" $EO2

if [[ $AO2 == $EO2 ]]
then
        echo "Test passed"
else
        echo "Test failed"
        bugs=$((bugs + 1))
fi
echo  "current bugs detected are" $bugs




#CASE 2 b2)

IN2='1 EUROS'

EO2="1.0 Euros = 1.31 Dollars"
AO2=$(java CurrencyConverter $IN2)
AO2=${AO2:0:24}

echo "AO2 is" $AO2
echo "EO2 is" $EO2

if [[ $AO2 == $EO2 ]]
then
        echo "Test passed"
else
        echo "Test failed"
        bugs=$((bugs + 1))
fi
echo  "current bugs detected are" $bugs




#CASE 2 b3)

IN2='1 Euros'

EO2="1.0 Euros = 1.31 Dollars"
AO2=$(java CurrencyConverter $IN2)
AO2=${AO2:0:24}

echo "AO2 is" $AO2
echo "EO2 is" $EO2

if [[ $AO2 == $EO2 ]]
then
        echo "Test passed"
else
        echo "Test failed"
        bugs=$((bugs + 1))
fi
echo  "current bugs detected are" $bugs




#CASE 3 Dollar)
IN3='1 dollars'

AO3=$(java CurrencyConverter $IN3)
euroamount=${AO3:40:44}
poundamount=${AO3:14:17}

if [[ $euroamount == 0.88 && $poundamount == 0.74 ]]
then
        echo "Test passed"
else
        echo "Test failed"
        bugs=$((bugs + 1))
fi

echo 'euro was' $euroamount
echo 'pound was' $poundamount


#CASE 3 Pound)
IN3='1 pounds'




#CASE 3 Euro)
IN3='1 euros'

#1.0 Dollars = 0.74 Pounds 1.0 Dollars = 0.88 Euros Thank you for using the converter. My name is Declan!

