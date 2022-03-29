:: Point to "do_backup.exe" file
set backup_script=C:\Users\User\Desktop\ConfigBackup\do_backup.exe
:: Set to the folder you want to backup
set src_path=C:\Users\User\Desktop\source\
:: Set to the folder backups will end up in
set dst_path=C:\Users\User\Desktop\destination\
:: Set task name
set task_name="Backup Task"
:: Set the interval for task in minutes. Max is 1439 minutes
set interval=60

schtasks /create /sc minute /tn %task_name% /ru system /mo 1 /tr "%backup_script% %src_path% %dst_path%"