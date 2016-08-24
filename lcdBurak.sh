### BEGIN INIT INFO
# Provides: LCD - date / time / ip address
# Required-Start: $remote_fs $syslog
# Required-Stop: $remote_fs $syslog
# Default-Start: 2 3 4 5
# Default-Stop: 0 1 6
# Short-Description: Liquid Crystal Display
# Description: date / time / ip address
### END INIT INFO

#! /bin/sh
# /etc/init.d/lcd

export HOME
case "$1" in
start)
echo "LCD Baslatiliyor"
sudo python /home/pi/Desktop/Denemeler/lcdPython/lcdPython.py 2
;;
stop)
echo "Stopping LCD"
LCD_PID=`ps auxwww | grep lcdPython.py | head -1 | awk '{print $2}'`
kill -9 $LCD_PID
;;
*)
echo "Usage: /etc/init.d/lcd {start|stop}"
exit 1
;;
esac
exit 0
