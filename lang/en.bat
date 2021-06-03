@echo off
TITLE Enable/Disable Veyone

:inicio
set/p eleccion= Enable Veyone (1), Disable Veyone (0).
IF %eleccion%==1 ( GOTO activar )
IF %eleccion%==0 ( GOTO desactivar ) else ( GOTO error )

:activar
net start VeyonService
goto fin

:desactivar
net stop VeyonService
goto fin

:error
CLS
ECHO Error, select 0/1
goto inicio

:fin
echo.
ECHO Thanks for using me, press enter to close the program.
ECHO FVCK VEYONE.
PAUSE>nul


