# Python Package Demo
This is a simple example of creating and consuming a distributable Python package. While I find the Python langauge to be intuitive and useful, for some reason I often struggle with `pip` & packages - both creating them and consuming them. So this is to just be a simple example of how to create and consume a package as a reference for myself.

# Contents #
* `package-project` contains a project directory for a Python package. 
* `package-project/src/boopackage` is the actual "package" directory. In accordance with Python's [documented behavior](https://docs.python.org/2.7/tutorial/modules.html#tut-packages), the directory is a package because it contains an `__init__.py` file.
* `package-consumer-project` is a project directory containing a Python module/script/app that consumes the package in `package-project/src/boopackage`.

## Putting it together ## 
Here is how it is supposed to work:
1. Run `install-package-devmode.sh` to install the package in [Development Mode](https://packaging.python.org/distributing/#working-in-development-mode). This should install the package in "editable" mode so that you can change it on your dev box and consuming Python applications will see your edits the next time they run.  
  * This script also runs `pip show boopackage` to confirm that the package `boopackage` is installed.
1. Run `test-consume-package.sh` to run the Python script at `package-consumer-project/consumepackage.py` that uses the package `boopackage`.



