#!/bin/sh

make
mkdir -p out

for f in in/*; do
    corpus="${f#in/}";
    echo '============================';
    echo "Corpus: $corpus";
    echo '============================';
    echo;
    echo '[gcc]';
    ./bench.gcc c $f out/$corpus.gz;
    echo '';
    echo '[llvm/clang]';
    ./bench.clang c $f out/$corpus.gz;
    echo;
    echo;
done
