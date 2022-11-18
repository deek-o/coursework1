#! /bin/bash

javac CurrencyConverter.java

bugs=0 #amount of bugs (to increment)
#CASE 1 a)
IN1='1 dollars'

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

EO2="AO2 is 1.0 Euros = 1.31 Dollars 1.0 Euros = 0.84 Pounds Thank you for using the converter. My name is Declan!"

AO2=$(java CurrencyConverter $IN2)

echo "AO2 is" $AO2

if [[ $AO2 == $EO2 ]]
then
        echo "Test passed"
else
        echo "Test failed"
        bugs=$((bugs + 1))
fi
echo  "current bugs detected are" $bugs
