#/bin/bash
# https://packaging.python.org/distributing/#working-in-development-mode
pushd .
cd ./package-project/src/boopackage
pip install -e .
popd

echo; echo

pip show boopackage
