:loop
@echo off
echo Loop start!
netsh interface set interface "VV_OSN" enable
@echo off
timeout /t 600 /nobreak
netsh interface set interface "VV_OSN" disable
timeout /t 45 /nobreak
goto loop
@echo off
echo Script done!