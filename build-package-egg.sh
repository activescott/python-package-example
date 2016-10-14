#/bin/bash
# see http://peak.telecommunity.com/DevCenter/PythonEggs
pushd .
cd ./package-project/src
python ./setup.py bdist_egg
popd .

echo; echo
