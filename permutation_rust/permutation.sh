#!/bin/bash
#Скрипт перебора перестановок.
#Запуск скрипта из командной строки с двумя аргументами.
#В качестве первого аргумента: вектор чисел через запятую по убыванию.
#В качестве второго аргумента: вектор чисел через запятую по возрастанию.

echo "Проверим аргументы";
if [ !  $1  ] || [ !  $2  ];
then
echo 'Запустите скрипт с двумя аргументами так: permutation.rs 3,2,1 1,2,3';
exit;
fi;

if  [ -f ./permutation.rs ]
 then
rm ./permutation.rs;
fi;

echo "Копируем образец";
cp ./permutation_pattern.rs ./permutation.rs
sed -i "s/1,0/$1/g" permutation.rs
sed -i "s/0,1/$2/g" permutation.rs

echo "Компилируем и запускаем...";
rustc permutation.rs
./permutation
