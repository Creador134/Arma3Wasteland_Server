@echo off
C:\Windows\System32\mods con cols=50 lines=7 >nul
set /a var=0
color 0a
:start
echo -------------------------------------------------------
echo ------------------ Iniciando Servidor -----------------
echo ---------- Olympus Server - Wasteland Stratis ---------
echo ----------------- Criado Por TitanShady ---------------
echo -------------------------------------------------------
powershell -command "Start-Sleep -s 15"
start "" "D:\Documents\Arma 3 - Server\Bec\Bec.exe" --dec -f Config.cfg
start "" /wait /realtime "D:\Documents\Arma 3 - Server\ArmA_III_Server\arma3server.exe" -server -port=2302 -config=D:\Documents\Arma 3 - Server\ArmA_III_Server\config.cfg -cfg=D:\Documents\Arma 3 - Server\ArmA_III_Server\basic.cfg -profiles=D:\Documents\Arma 3 - Server\ArmA_III_Server\Arma3_DEDI name=default -filePatching -mod=@life_server;@asm;@extDB; -cpucount=4 -maxmen=6400 -exThreads=7
set /a var+=1
cls
echo 		SERVIDOR REINICIOU %var% VEZ(ES)
goto start