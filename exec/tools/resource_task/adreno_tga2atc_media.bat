 @echo off
 	rem this file made by yikaiming 2012/12/13

    rem batch gammar reference
    
    rem echo %%~dpnA disk + dir + name
    rem echo %%~sA name+ext
    rem echo %%~nA name
    rem echo %%~fA abspathname
    rem echo %%~xA ext
    rem echo %%~pA dik

call ..\global_task\set_global_env.bat

for /R %GKENGINE_HOME%\media %%A in (*.tga) do (
    
    IF NOT EXIST %%~dpnA.atc (
    	echo [convert file] %%~nxA to %%~nA.atc
    	%GKENGINE_HOME%\tools\gkResourceCompiler -i %%~fA -o %%~dpnA.atc -l 5 -p 0 -cfg atc
    ) ELSE (
    	echo [file exist] %%~nA.atc
    )

)
rem -fOGL4444
rem pause