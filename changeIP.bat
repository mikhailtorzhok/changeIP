@ECHO off
cls
:start
ECHO.
ECHO 1. Change Ethernet Static IP = 192.168.8.137 and 192.168.8.137 it's my ip just for test
ECHO 2. Change Ethernet Static IP = 192.168.0.55 and 192.168.5.4 default GW = 192.168.5.151 DNS1=192.168.5.151 DNS2=192.168.0.245
ECHO 3. Change Ethernet Static IP = 192.168.0.241 and 192.168.5.20 default GW = 192.168.5.151 DNS1=192.168.5.151 DNS2=192.168.0.245
ECHO 4. Change Ethernet Static IP = 192.168.0.244 and 192.168.5.11 default GW = 192.168.5.151 DNS1=192.168.5.151 DNS2=192.168.0.245
ECHO 5. Change Ethernet Static IP = 192.168.0.246 and 192.168.5.246 default GW = 192.168.5.151 DNS1=192.168.5.151 DNS2=192.168.0.245
ECHO 6. Obtain an IP address automatically
ECHO 22.To fix con2
ECHO 33.To fix con3
ECHO 44.To fix con4
ECHO 55.To fix con5
ECHO 777. Exit
set choice=
set /p choice= Press the number to perform the action.

::if not '%choice%'=='' set choice=%choice:~0,1%
if '%choice%'=='1' goto con1
if '%choice%'=='2' goto con2
if '%choice%'=='3' goto con3
if '%choice%'=='4' goto con4
if '%choice%'=='5' goto con5
if '%choice%'=='6' goto autosearch
if '%choice%'=='22' goto con22
if '%choice%'=='33' goto con33
if '%choice%'=='44' goto con44
if '%choice%'=='55' goto con55
if '%choice%'=='777' goto end
ECHO "%choice%" is not valid, try again
ECHO.
goto start

:con1
ECHO Changing Connection 1
::set main IP, submusk and default gateway 
netsh interface ip set address name="Ethernet" static 192.168.8.137 255.255.255.0 192.168.0.5
::set addition ip (Advansed button)
netsh interface ipv4 add address name="Ethernet" address=192.168.88.137 255.255.255.0 192.168.88.5
::clear DNS
netsh interface ipv4 set dnsserver "Ethernet" static none
:: set new first DNS
netsh interface ipv4 add dns "Ethernet" 192.168.8.201 1
:: set new alternative DNS
netsh interface ipv4 add dns "Ethernet" 192.168.8.245 2
goto bye

:con2
ECHO Changing Connection 2
::set main IP, submusk and default gateway 
netsh interface ip set address name="Ethernet" static 192.168.5.4 255.255.255.0 192.168.5.151
::set addition ip (Advansed button)
netsh interface ipv4 add address name="Ethernet" address=192.168.0.55 255.255.255.0 192.168.0.5
::clear DNS
netsh interface ipv4 set dnsserver "Ethernet" static none
:: set new first DNS
netsh interface ipv4 add dns "Ethernet" 192.168.5.151 1
:: set new alternative DNS
netsh interface ipv4 add dns "Ethernet" 192.168.0.245 2 
goto bye

:con22
ECHO Changing Connection 22
::set main IP, submusk and default gateway 
netsh interface ip set address name="Ethernet" static 192.168.0.55 255.255.255.0 192.168.0.5
::set addition ip (Advansed button)
netsh interface ipv4 add address name="Ethernet" address=192.168.5.4 255.255.255.0 192.168.5.151
::clear DNS
netsh interface ipv4 set dnsserver "Ethernet" static none
:: set new first DNS
netsh interface ipv4 add dns "Ethernet" 192.168.5.151 2
:: set new alternative DNS
netsh interface ipv4 add dns "Ethernet" 192.168.0.245 1 
goto bye

:con3
ECHO Changing Connection 3
::set main IP, submusk and default gateway 
netsh interface ip set address name="Ethernet" static 192.168.5.20 255.255.255.0 192.168.5.151
::set addition ip (Advansed button)
netsh interface ipv4 add address name="Ethernet" address=192.168.0.241 255.255.255.0 192.168.0.5
::clear DNS
netsh interface ipv4 set dnsserver "Ethernet" static none
:: set new first DNS
netsh interface ipv4 add dns "Ethernet" 192.168.5.151 1
:: set new alternative DNS
netsh interface ipv4 add dns "Ethernet" 192.168.0.245 2
goto bye

:con33
ECHO Changing Connection 33
::set main IP, submusk and default gateway 
netsh interface ip set address name="Ethernet" static 192.168.0.241 255.255.255.0 192.168.0.5
::set addition ip (Advansed button)
netsh interface ipv4 add address name="Ethernet" address=192.168.5.20 255.255.255.0 192.168.5.151
::clear DNS
netsh interface ipv4 set dnsserver "Ethernet" static none
:: set new first DNS
netsh interface ipv4 add dns "Ethernet" 192.168.5.151 2
:: set new alternative DNS
netsh interface ipv4 add dns "Ethernet" 192.168.0.245 1
goto bye

:con4
ECHO Changing Connection 4
::set main IP, submusk and default gateway 
netsh interface ip set address name="Ethernet" static 192.168.5.11 255.255.255.0 192.168.5.151
::set addition ip (Advansed button)
netsh interface ipv4 add address name="Ethernet" address=192.168.0.244 255.255.255.0 192.168.0.5
::clear DNS
netsh interface ipv4 set dnsserver "Ethernet" static none
:: set new first DNS
netsh interface ipv4 add dns "Ethernet" 192.168.5.151 1
:: set new alternative DNS
netsh interface ipv4 add dns "Ethernet" 192.168.0.245 2
goto bye

:con44
ECHO Changing Connection 44
::set main IP, submusk and default gateway 
netsh interface ip set address name="Ethernet" static 192.168.0.244 255.255.255.0 192.168.0.5
::set addition ip (Advansed button)
netsh interface ipv4 add address name="Ethernet" address=192.168.5.11 255.255.255.0 192.168.5.151
::clear DNS
netsh interface ipv4 set dnsserver "Ethernet" static none
:: set new first DNS
netsh interface ipv4 add dns "Ethernet" 192.168.5.151 2
:: set new alternative DNS
netsh interface ipv4 add dns "Ethernet" 192.168.0.245 1
goto bye

:con5
ECHO Changing Connection 5
::set main IP, submusk and default gateway 
netsh interface ip set address name="Ethernet" static 192.168.5.246 255.255.255.0 192.168.5.151
::set addition ip (Advansed button)
netsh interface ipv4 add address name="Ethernet" address=192.168.0.246 255.255.255.0 192.168.0.5
::clear DNS
netsh interface ipv4 set dnsserver "Ethernet" static none
:: set new first DNS
netsh interface ipv4 add dns "Ethernet" 192.168.5.151 1
:: set new alternative DNS
netsh interface ipv4 add dns "Ethernet" 192.168.0.245 2
goto bye

:con55
ECHO Changing Connection 55
::set main IP, submusk and default gateway 
netsh interface ip set address name="Ethernet" static 192.168.0.246 255.255.255.0 192.168.0.5
::set addition ip (Advansed button)
netsh interface ipv4 add address name="Ethernet" address=192.168.5.246 255.255.255.0 192.168.5.151
::clear DNS
netsh interface ipv4 set dnsserver "Ethernet" static none
:: set new first DNS
netsh interface ipv4 add dns "Ethernet" 192.168.5.151 2
:: set new alternative DNS
netsh interface ipv4 add dns "Ethernet" 192.168.0.245 1
goto bye

:autosearch
ECHO obtaining auto IP
ipconfig /renew "Ethernet"
goto bye

:bye
pause
ECHO BYE
goto end

:end