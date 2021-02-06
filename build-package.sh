#/bin/bash
die () {
	echo >&2 "$@"
	exit 1
}

pushd .
cd ./package-project/src
# Warning: eggs are deprecated in favor of wheels, and not supported by pip. - https://setuptools.readthedocs.io/en/latest/setuptools.html#bdist-egg-create-a-python-egg-for-the-project
# python3 ./setup.py bdist_egg || die 'python setup failed'
python3 ./setup.py bdist_wheel || die 'python setup failed'
popd .

echo; echo
