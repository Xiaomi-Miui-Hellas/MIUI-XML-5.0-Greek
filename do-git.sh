#!/bin/bash
clear
# variables
BACKPATH="../MIUI-XML-5.0-Greek_Backup"
VER="0.6"
echo "Do GIT script v.$VER"
echo "by @SomniusX (Somnius on GitHub)"
echo " "
echo "The program checks for backup directory, if it doesn't exist it creates it."
echo "Then it zip's with -r -q -9 flags (recursive/quiet/max compression) with date."
echo "Then it displays backup folder size and starts commit all, pull and then push."
echo " "
echo "-------------------------------------------------------"
echo " " 
if [ -d $BACKPATH ]
then
    echo "Backup Directory exists."
	echo "Starting process.."
# the zipping using date
	zip -r -q -9 $BACKPATH/backup-$(date +%Y%m%d_%H%M).zip *
# the du to check the file size
	du -sh $BACKPATH/*.zip|tail -1|sed -e "s/..\/MIUI-XML-5.0-Greek_Backup\//is the back'ed up file\: /"
	echo "Backup folder size is.."
# the du with sed to display the backup folder size
	du -sh $BACKPATH|sed -e "s/..\/MIUI-XML-5.0-Greek_/holds the folder\: /"
	echo " "
# wait for 1sec
	sleep 1
# the commit all
	git commit -a
# the pull
	git pull
# the push
	git push
#echo " "
	echo " "
	echo "All done.."
#echo " "
else
    echo "Backup Directory doesn't exist, creating.."
# creating the backup directory for 1st time use
	mkdir $BACKPATH
	echo "Starting process.."
# the zipping using date
	zip -r -q -9 $BACKPATH/backup-$(date +%Y%m%d_%H%M).zip *
# the du to check the file size
	du -sh $BACKPATH/*.zip|tail -1|sed -e "s/..\/MIUI-XML-5.0-Greek_Backup\//is the back'ed up file\: /"
	echo "Backup folder size is.."
# the du with sed to display the backup folder size
	du -sh $BACKPATH|sed -e "s/..\/MIUI-XML-5.0-Greek_/holds the folder\: /"
	echo " "
# wait for 1sec
	sleep 1
# the commit all
	git commit -a
# the pull
	git pull
# the push
	git push
#echo " "
	echo " "
	echo "All done.."
#echo " "
fi
