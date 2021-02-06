from __future__ import print_function
# demonstrating relative verses absolute imports as described at https://www.python.org/dev/peps/pep-0328/
from boopackage.barmodule import barfunc
from .barmodule import barfunc as barfunc_relative


def boofunc():
    print('boofunc')

    print('testing barfunc via absolute/normal import...')
    barfunc()
    print('testing barfunc via absolute import complete.')

    print('testing barfunc via relative import...')
    barfunc_relative()
    print('testing barfunc via relative import complete.')
