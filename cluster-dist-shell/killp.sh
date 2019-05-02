kill $(ps -ef | grep /usr/local/bin/pip | grep -v 'grep' | awk '{print $2}')
