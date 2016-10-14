#/bin/bash
pushd .
cd ./package-project/src
python ./setup.py sdist
popd .

echo; echo
