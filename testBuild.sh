
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
	((bugs+=1))
fi
echo  "current bugs detected are" $bugs


