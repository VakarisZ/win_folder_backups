import os
import sys
import glob
from pathlib import Path
from datetime import datetime
from shutil import copytree

src_path = Path(sys.argv[1])
dst_path = Path(sys.argv[2])

src_path_match = src_path / "**"
list_of_files = glob.glob(str(src_path_match), recursive=True)
latest_file = max(list_of_files, key=os.path.getmtime)
latest_time = os.path.getmtime(latest_file)
latest_time = datetime.fromtimestamp(latest_time)
lts = latest_time.strftime("%Y-%m-%d_%H-%M-%S")

backup_path = dst_path / lts

if backup_path.is_dir():
    sys.exit()

copytree(src_path, backup_path)
