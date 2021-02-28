#!/bin/bash

if  [ -f ./permutation.rs ]
 then
rm ./permutation.rs;
fi;

cp ./permutation_pattern.rs ./permutation.rs
sed -i "s/1,0/$1/g" permutation.rs
sed -i "s/0,1/$2/g" permutation.rs
rustc permutation.rs
./permutation
