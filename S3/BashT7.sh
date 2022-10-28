#!/bin/bash


filename=$1

read -p "What would you like to add to $filename: " info

echo "$info" >> $filename
