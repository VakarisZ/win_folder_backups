## How to freeze

Run `pyinstaller ./do_backup.py --onefile`


## About

This is a set of scripts used to regularly backup folders if any file in the folder got edited on Windows.

## How it works

If a file below a `src_path` directory got created or modified since the last backup, a backup of `src_path` directory is created in `dst_path`. The backup folder name is the date that backup were taken/`src_folder` got modified. 

The backup folder name format is YEARS-MONTHS-DAYS_HOURS-MINUTES-SECONDS

## How to use it

1. Edit the variables in `create_task.bat` file. 
2. Run `create_task.bat` as admin

## Troubleshooting

Go to the task scheduler GUI and try to run the task manually, take a look at the "last result" column.

Make sure there are no spaces in your paths.

Note that `do_backup.exe` script is used instead of `do_backup.bat`. `do_backup.bat` will create backups regardless of file modification in `src_path`. You can use this script instead if `do_backup.exe` doesn't work.
