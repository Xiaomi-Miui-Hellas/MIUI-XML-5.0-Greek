#!/bin/bash
echo " "
zip -r -q -0 ../MIUI-XML-5.0-Greek_Backup/backup-$(date +%Y%m%d_%H%m).zip *
sleep 1
git commit -a
git pull
git push
echo " "
echo "All done.."
echo " "