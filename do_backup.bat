@echo off
:: Set to the folder you want to backup
set src_path=C:\Users\User\Desktop\source\
:: Set to the folder backups will end up in
set dst_path=C:\Users\User\Desktop\destination\


:: Get timestamp
for /f "tokens=2 delims==" %%a in ('wmic OS Get localdatetime /value') do set "dt=%%a"
set "YY=%dt:~2,2%" & set "YYYY=%dt:~0,4%" & set "MM=%dt:~4,2%" & set "DD=%dt:~6,2%"
set "HH=%dt:~8,2%" & set "Min=%dt:~10,2%" & set "Sec=%dt:~12,2%"

set "timestamp=%YYYY%-%MM%-%DD%_%HH%-%Min%"

:: Get latest modification date in folder
for %a in (MyFile.txt) do set FileDate=%~ta

:: Create destination folder
set backup_folder="%dst_path%%timestamp%"
mkdir %backup_folder%

:: Move all files to the destination folder
xcopy %src_path% %backup_folder% /s /e /y