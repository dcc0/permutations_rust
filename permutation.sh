#!/bin/bash
#Стартовый скрипт для  перебора перестановок.
#Запуск скрипта из командной строки с аргументом.
#В качестве первого аргумента: число перестановок.
#Initial script to generate permutations.
#We start script out of a command line with an argument.
#First argument is a number of permutations.
#MSK(c)2021. E-mail: dcc0@yandex.ru


#Argument verifying
echo "Проверим аргумент";
if [ !  $1  ];
  then
echo 'Запустите скрипт с аргументом так: /bin/bash permutation.sh 3';
exit;
  fi;

#Проверим файл. File verifying
if  [ -f ./permutation.rs ]
 then
rm ./permutation.rs;
  fi;

#Переменные для векторов. Vars for vectors
n=$1;
y=$1;

#Here we are verifying argument equal to 0, so factorial of 0 is 1
#Проверим аргумент на равенство 0, так факториал 0 равен 1
if [ "$1" -eq "0" ]
 then
((n++));
((y++));
 fi;

#Here we are creating vectrors
echo 'Формируем векторы...';
for (( x=0; x<$n; x++ ))
  do
VECTOR+="$x,";
((y--));
REVERSED_VECTOR+="$y,"
  done

#Copying pattern
echo "Копируем образец";
cp ./permutation_pattern.rs ./permutation.rs
sed -i "s/1,0/$REVERSED_VECTOR/g" permutation.rs
sed -i "s/0,1/$VECTOR/g" permutation.rs

#Compile and Run
echo "Компилируем и запускаем";
rustc permutation.rs
./permutation
