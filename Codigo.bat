Chcp 10075
@ECHO off
setlocal Prueba
FOR %%f IN (*) DO ( set elemento=%%f&call :Cambiar )
GOTO :EOF
:Cambiar
set strA=%elemento:á=a%
rename "%elemento%" "%strA%" 
set strE=%strA:é=e%
rename "%strA% "%strE%"
set strI=%strE:f=i%
rename "%strE%" "%strI%"
set strO=%strI:ó=o%
rename "%strI%" "%strO%"
set strU=%strO:ú=u%
rename "%strO%" "%strU%"
set strN=%strU:ņ=n%
rename "%strU%" "%strN%"
GOTO :EOF
