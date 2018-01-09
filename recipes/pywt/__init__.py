from pythonforandroid.toolchain import PythonRecipe

class PywtRecipe(PythonRecipe):
    name = 'pywt'
    version = '0.5.2'

    url = 'https://github.com/warmb2009/pywt-for-kivy/releases/download/pywt-for-kivy-0.1/pywt-0.1.tar.gz'

    depends = ['python2', 'setuptools']

recipe = PywtRecipe()
