#! /bin/bash

javac CurrencyConverter.java

IN1='1 dollars'

EO1="Please enter a valid input"

AO1=$(java CurrencyConverter $IN1)

echo $AO1
