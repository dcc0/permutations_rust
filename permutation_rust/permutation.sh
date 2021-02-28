#!/bin/bash

if [ !  $1  ] || [ !  $2  ];
then
echo 'Запустите скрипт с двумя аргументами так: permutation.rs 3,2,1 1,2,3';
exit;
fi;

if  [ -f ./permutation.rs ]
 then
rm ./permutation.rs;
fi;

cp ./permutation_pattern.rs ./permutation.rs
sed -i "s/1,0/$1/g" permutation.rs
sed -i "s/0,1/$2/g" permutation.rs
rustc permutation.rs
./permutation
