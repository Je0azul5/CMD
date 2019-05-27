CLS
:start
echo 1. Memoria
echo 2. Tareas inactivas
echo 3. Memoria disponible

set/p input= ANSWER?
if %input%==1 goto primero 
if %input%==2 goto segundo 
if %input%==3 goto tercero  
pause
exit

:primero
tasklist/fi "memusage gt 120000"
set/p input= proceso a matar
taskkill/im %input%
CLS
goto start
pause

:segundo
tasklist/FI "STATUS  ne running"> c:/ABC.txt
pause
CLS
goto start

:tercero
shutdown -r -t 10
CLS
goto start
pause