chcp 65001
@ECHO off
FOR %%f IN (*) DO (
    set archivo=%%f&call :renombrar
)
GOTO :EOF
set str1=%archivo:á=a%
rename "%archivo%" "%str1%"
set str2=%str1:é=e%
rename "%str1%" "%str2%"
set str3=%str2:í=i%
rename "%str2%" "%str3%"
set str4=%str3:ó=o%
rename "%str3%" "%str4%"
set str5=%str4:ú=u%
rename "%str4%" "%str5%"
set str6=%str5:ñ=n%
rename "%str5%" "%str6%"
set str7=%str6:Á=A%
rename "%str6%" "%str7%"
set str8=%str7:É=E%
rename "%str7%" "%str8%"
set str9=%str8:Í=I%
rename "%str8%" "%str9%"
set str10=%str9:Ó=O%
rename "%str9%" "%str10%"
set str11=%str10:Ú=U%
rename "%str10%" "%str11%"
set str12=%str11:Ñ=N%
rename "%str11%" "%str12%"
GOTO :EOF
