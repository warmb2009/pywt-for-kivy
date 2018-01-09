//mv lib_pywt.so so/_pywt.so
//mv lib_dwt.so so/_dwt.so
//mv lib_swt.so so/_swt.so
//mv lib_cwt.so so/_cwt.so
mv lib_pywt.so so/_pywt.so
mv lib_dwt.so so/_dwt.so
mv lib_swt.so so/_swt.so
mv lib_cwt.so so/_cwt.so


adb push so/* /data/data/org.test.myapp/files/app/lib/python2.7/site-packages/pywt/_extensions
