# Python Package Demo
This is a simple example of creating and consuming a distributable Python package. While I find the Python language to be intuitive and useful, for some reason I often struggle with `pip` & packages - both creating them and consuming them. So this is to just be a simple example of how to create and consume a package as a reference for myself.

This is not intended to be a replacement for the [Python Packaging User Guide (PyPUG)](https://packaging.python.org/) and it's corresponding [sample project](https://github.com/pypa/sampleproject). I've used that as my primary reference, and I encourage others to do the same. This has a slightly simplified example and a FAQ and Troubleshooting section with some questions and problems I've encountered while exploring Python. Happy to accept PRs for suggested improvements.


# Contents #
* `package-project` contains a project directory for a Python package. Note that it's only content is the `package-project/src` directory for now. If you wanted to add tests or something you could put those in `package-project/tests` or something.
* `package-project/src/boopackage` is the actual "package". In accordance with Python's [documented behavior](https://docs.python.org/2.7/tutorial/modules.html#tut-packages), the directory is a package because it contains an `__init__.py` file.
* `package-consumer-project` is a project directory containing a Python module/script/app that consumes the package in `package-project/src/boopackage`.

# FAQ #
## How do I install and use a package in Development Mode? ##
[Development Mode](https://packaging.python.org/distributing/#working-in-development-mode) installs the package in "editable" mode so that you can change the source for your package in the actual source directory and consuming Python scripts/applications will see your edits the next time they run. To install your package in Development Mode run `install-package-devmode.sh`.
Note that this script also runs `pip show boopackage` to confirm that the package `boopackage` is installed.

## How do I Package/Bundle/Zip/Prepare my source code into a distributable package that I can distribute to others to use in their own Python apps? ##
Run `build-package.sh` to prepare your package source code for distribution. This will deploy a distributable Python package into `package-project/src/dist/boopackage-1.0.tar.gz`.

## How do other users install the package once it's built? ##
Other users can run `pip install boopackage-1.0.tar.gz` to install your package. See `install-built-package.sh` as an example. To use the package once it's ist installed see `test-consume-package.sh` which simply runs the Python script/app in `package-consumer-project/consumepackage.py` that uses the package `boopackage`.

Alternatively, you can [upload your built package to PyPI](https://packaging.python.org/distributing/#uploading-your-project-to-pypi) and then they can install it by running `pip install boopackage`. 


# Troubleshooting #
## After installing the package I still see the error 'ImportError: No module named <mypackage>' when trying to use it in a script/app. ##
It is important that the `setup.py` is in the **parent** of the actual root package folder. If you don't do this you won't get any errors, and pip will show you're package as installed (e.g. with `pip show <mypackage>`) but consuming scripts of the package won't ever find the package and will always get the `ImportError`.

So this also implies that the "package" isn't what you specify as the name of your package in `setup.py`. Although `pip` uses the name in `setup.py` to determine whether it is installed, Python itself only cares about the directory that contains the `__init__.py` file.
