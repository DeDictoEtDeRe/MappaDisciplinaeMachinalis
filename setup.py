from setuptools import setup
from Cython.Build import cythonize
import numpy as np

setup(
        ext_modules=cythonize("hello_data_accelerated.pyx"),
        include_dirs=[np.get_include()] #Required if typed numpy arrays are used
)

