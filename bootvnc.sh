#!/bin/sh
### BEGIN INIT INFO
# Provides: vncboot
# Required-Start: $remote__fs $syslog
# Required-Stop: $remote__fs $syslog
# Default-Start: 2 3 4 5
# Default-Stop: 0 1 6
# Short-Description: Start VNC Server at boot time
# Description: Start VNC Server at boot time.
### END INIT INFO

USER=root
HOME=/root

export USER HOME

case "$1" in
start)
echo "Starting VNC Server"
#Insert your favoured settings for a VNC session
/usr/bin/vncserver :0 -geometry 1280x800 -depth 16 -pixelformat rgb565
;;

stop)
echo "Stopping VNC Server"
/usr/bin/vncserver -kill :0
;;

**)
echo "Usage: /etc/init.d/bootvnc {start|stop}"
exit 1
;;
esac

exit 0