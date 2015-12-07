@echo off
REM "ftype /?" explains all of this assoc and ftype and PATHEXT usage
REM https://docs.python.org/2/using/windows.html for more info around the subject.

REM set PythonDIR to your python 2 or 3 install path; e.g. the folder with python.exe in it.

set PythonDIR=C:\Users\IBM_ADMIN\rcs\python-2.7.9
set PATH=%PythonDIR%;%PythonDIR%\Scripts;%PATH%
set PYTHONPATH=%PythonDIR%\Lib;%PythonDIR%\Lib\site-packages;%PythonDIR%\DLLs;
set PATHEXT=%PATHEXT%;.PY;.PYW
assoc .py=Python.File>NUL
assoc .pyw=PythonW.File>NUL
ftype Python.File="%PythonDIR%\python.exe" %%1 %%*>NUL
ftype PythonW.File="%PythonDIR%\pythonw.exe" %%1 %%*>NUL