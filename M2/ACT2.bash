#!/bin/bash

angka=$(shuf -i 1-100 -n 1)
echo "======================"
echo "Tebak angka dari 1-100"

x=1
while [ $x -eq 1 ]
do
    echo -n "Masukkan tebakan anda:"
    read tebak
    if [ $tebak -gt $angka ]
    then
        echo "Tebak angka yang lebih kecil"
    elif [ $tebak -lt $angka ]
    then
        echo "Tebak angka yang lebih besar"
    else
        echo "Selamat, tebakan anda benar!"
        x=0
    fi
done
echo