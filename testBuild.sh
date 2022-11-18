#! /bin/bash

javac CurrencyConverter.java


#CASE 1 a)
IN1='dollars 1'

EO1="Invalid input..."

AO1=$(java CurrencyConverter $IN1)

if [[ "$AO1" == "$EO1"  ]]
then
	echo "Test case passed"
else
	echo "Test failed"
	#bugs=$((bugs + 1))
	exit 0
fi



#CASE 2 b1)

IN2='1 euros'

EO2="1.0 Euros = 1.31 Dollars"
AO2=$(java CurrencyConverter $IN2)
AO2=${AO2:0:24}

if [[ $AO2 == $EO2 ]]
then
        echo "Test case passed"
else
        echo "Test failed - lower case input not accepted"
        bugs=$((bugs + 1))
	exit 0
fi



#CASE 2 b2)

IN2='1 EUROS'

EO2="1.0 Euros = 1.31 Dollars"
AO2=$(java CurrencyConverter $IN2)
AO2=${AO2:0:24}


if [[ $AO2 == $EO2 ]]
then
        echo "Test case passed"
else
        echo "Test failed - all upper case input not accepted"
        bugs=$((bugs + 1))
	exit 0

fi



#CASE 2 b3)

IN2='1 Euros'

EO2="1.0 Euros = 1.31 Dollars"
AO2=$(java CurrencyConverter $IN2)
AO2=${AO2:0:24}


if [[ $AO2 == $EO2 ]]
then
        echo "Test case passed"
else
        echo "Test failed - capitalisation not accepted"
        bugs=$((bugs + 1))
	exit 0

fi



#CASE 3 Dollar)
IN3='1 dollars'

euroamount='0.88'
poundamount='0.74'

AO3=$(java CurrencyConverter $IN3)

if [[ "$AO3" == *"$euroamount"* && "$AO3" == *"$poundamount"* ]]
then
        echo "Test passed"
else
        echo "Test failed"
        bugs=$((bugs + 1))
fi

echo 'euro was' $euroamount
echo 'pound was' $poundamount

echo  "current bugs detected are" $bugs


#CASE 3 Pound)
IN3='1 pounds'

euroamount='1.19'
dollaramount='1.36'

AO3=$(java CurrencyConverter $IN3)

if [[ "$AO3" == *"$euroamount"* && "$AO3" == *"$dollaramount"* ]]
then
        echo "Test passed"
else
        echo "Test failed"
        bugs=$((bugs + 1))
fi

echo 'euro was' $euroamount
echo 'pound was' $poundamount

echo  "current bugs detected are" $bugs



#CASE 3 Euro)
IN3='1 euros'

poundamount='0.84'
dollaramount='1.13'

AO3=$(java CurrencyConverter $IN3)

if [[ "$AO3" == *"$poundamount"* && "$AO3" == *"$dollaramount"* ]]
then
        echo "Test passed"
else
        echo "Test failed"
        bugs=$((bugs + 1))
fi

echo 'euro was' $euroamount
echo 'pound was' $poundamount

echo  "current bugs detected are" $bugs


