@echo off
C:\Windows\System32\mode con cols=50 lines=7 >nul
set /a var=0
color 0a
:start
echo -------------------------------------------------------
echo ------------------ Iniciando Servidor -----------------
echo ---------- Olympus Server - Wasteland Stratis ---------
echo ----------------- Criado Por TitanShady ---------------
echo -------------------------------------------------------
powershell -command "Start-Sleep -s 15"
start "" "D:\Documents\Arma_3_Server\Arma_III_Tools\Bec\Bec.exe" --dec -f Config.cfg
start "" /wait /realtime "D:\Documents\Arma_3_Server\ArmA_III_Server\arma3server.exe" -server -port=2302 -config=D:\Documents\Arma_3_Server\ArmA_III_Server\TADST\default\TADST_config.cfg -cfg=D:\Documents\Arma_3_Server\ArmA_III_Server\TADST\default\TADST_basic.cfg -profiles=D:\Documents\Arma_3_Server\ArmA_III_Server\TADST\default -name=default -filePatching -mod=@asm; -autoInit -cpucount=4 -maxmen=6400 -exThreads=7
set /a var+=1
echo 		SERVIDOR REINICIOU %var% VEZ(ES)
goto start