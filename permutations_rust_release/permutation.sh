#!/bin/bash
#Скрипт перебора перестановок.
#Запуск скрипта из командной строки с аргументом.
#В качестве первого аргумента: число перестановок.

echo "Проверим аргумент";
if [ !  $1  ];
  then
echo 'Запустите скрипт с аргументом так: /bin/bash permutation.sh 3';
exit;
  fi;

if  [ -f ./permutation.rs ]
 then
rm ./permutation.rs;
  fi;

#Переменные для векторов
n=$1;
y=$1;

#Проверим аргумент на равенство 0
if [ "$1" -eq "0" ]
 then
((n++));
((y++));
 fi;


echo 'Формируем векторы...';
for (( x=0; x<$n; x++ ))
  do
VECTOR+="$x,";
((y--));
REVERSED_VECTOR+="$y,"
  done


echo "Копируем образец";
cp ./permutation_pattern.rs ./permutation.rs
sed -i "s/1,0/$REVERSED_VECTOR/g" permutation.rs
sed -i "s/0,1/$VECTOR/g" permutation.rs

echo "Компилируем и запускаем";
rustc permutation.rs
./permutation
