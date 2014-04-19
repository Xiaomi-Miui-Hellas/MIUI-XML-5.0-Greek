#!/bin/bash
echo " "
zip -r -q -9 ../MIUI-XML-5.0-Greek_Backup/backup-$(date +%Y%m%d_%H%M).zip *
sleep 1
git commit -a
git pull
git push
echo " "
echo "All done.."
echo " "