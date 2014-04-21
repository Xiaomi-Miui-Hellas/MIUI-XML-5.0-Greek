#!/bin/bash
echo "Starting process.."
zip -r -q -9 ../MIUI-XML-5.0-Greek_Backup/backup-$(date +%Y%m%d_%H%M).zip *
#ls -t ../MIUI-XML-5.0-Greek_Backup/*.zip | head -1
du -sh ../MIUI-XML-5.0-Greek_Backup/*.zip|tail -1
sleep 1
git commit -a
git pull
git push
#echo " "
echo "All done.."
#echo " "