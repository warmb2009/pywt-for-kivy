# -*- coding:utf-8 -*-

#from setuptools import setup, find_packages
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
#       package_dir = {'' : 'pywt'},
#       data_files = [('data' , ['data/ecg.npy']) ],
       zip_safe=True,
)
