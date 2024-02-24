Configure the Cron Job:

Open the crontab file with:

crontab -e

Add the following line to run the backup script at 12 AM and 12 PM:

0 0,12 * * * /path/to/backup.sh

This setup will run the backup script at 12 AM and 12 PM daily, backing up multiple source directories to the destination directory using rsync for incremental backups.

