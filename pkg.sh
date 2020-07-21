#!/bin/bash
root_path=`dirname $0`
PYTHONOPTIMIZE=2 pyinstaller -F ${root_path}/mycli/main.py --onefile -n "mysql" \
    --add-data "${root_path}/mycli/myclirc:mycli" \
    --add-data "${root_path}/mycli/AUTHORS:mycli" \
    --add-data "${root_path}/mycli/SPONSORS:mycli"
