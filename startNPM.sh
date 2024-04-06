#!/bin/bash

echo "node_modules/" >> .gitignore

# git submodule add https://github.com/jadedrakerider/EasyAccessor.git lib/ea
# git submodule init
# git submodule update
# echo ''

npm i mocha chai --save-dev
echo ''

npm install
echo 'npm dependencies installed'

mkdir test
cd test
git submodule add https://github.com/GeorgeSchafer/ChaiTests.git
touch test.spec.mjs
echo ''

cd ..
echo ''

npm init
echo ''

git add .
git commit -a -m 'Ran startNPM'
echo ''