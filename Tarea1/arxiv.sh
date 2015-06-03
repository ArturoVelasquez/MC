#!/bin/bash
figlet arXiv

echo '
=============================================
Searching the arXiv for the new stuff:
http://arxiv.org/list/nucl-th/ne
=============================================
Keyword:' $1
echo '============================================='
curl -s http://arxiv.org/list/nucl-th/new > todo.txt
grep -i title: todo.txt | grep -i $1  > lista.txt
cantidad=$(wc -l lista.txt | sed 's/ lista.txt//g')
echo 'number of files' $cantidad 
sed 's/.*:<\/span>/-/g' lista.txt
rm lista.txt
rm todo.txt
