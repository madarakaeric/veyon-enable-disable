@echo off
TITLE Activar/Desactivar Veyone

:inicio
set/p eleccion= Activar Veyone (1), Desactivar Veyone (0).
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
ECHO Error, selecciona 0/1
goto inicio

:fin
echo.
ECHO Gracias por usarme, pulsa enter para cerrar el prgrama.
ECHO FVCK VEYONE.
PAUSE>nul