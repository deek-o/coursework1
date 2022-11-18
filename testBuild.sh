#! /bin/bash

javac CurrencyConverter.java

bugs=0 #amount of bugs (to increment)
#CASE 1 a)
IN1='dollars 1'

EO1="Please enter a valid input"

AO1=$(java CurrencyConverter $IN1)

echo $AO1
