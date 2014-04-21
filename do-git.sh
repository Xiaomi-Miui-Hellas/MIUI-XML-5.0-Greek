#!/bin/bash
if [ -d "../MIUI-XML-5.0-Greek_Backup" ]
then
    echo "Backup Directory exists."
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
else
    echo "Backup Directory doesn't exist, creating.."
	mkdir ../MIUI-XML-5.0-Greek_Backup
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
fi
