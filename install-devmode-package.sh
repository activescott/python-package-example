#/bin/bash
# https://packaging.python.org/distributing/#working-in-development-mode
pushd .
cd ./package-project/src/
pip install -e .
popd

echo; echo

pip show boopackage
