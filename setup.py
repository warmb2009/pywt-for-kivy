# -*- coding:utf-8 -*-

#from setuptools import setup, find_packages  [setuptools shows error in p4a]
from distutils.core import setup, Extension
setup (name = 'pywt',
       version = '0.1',
       author = "Pywt Docs",
       description = """pywt""",
       include_package_data = True,
       
       packages = ['pywt', 'pywt/data', 'pywt/_extensions'],
       package_data = {
           '' : ['*.npy', '*.npz', '*.so'],
           'data' : ['data/*.npy', 'data/*.npz'],
           '_extensions' : ['_extensions/*.so'],
       },

       zip_safe=True,
)
