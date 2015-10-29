#! /bin/sh

. '{{ m.contlib }}/cont-lib.sh'

cont_info 'for more info about this container see: $ docker run --rm THIS_IMAGE container-usage'
cont_info 'starting Xvfb server (in background)'
tmux new -d -s -c 'Xvfb :10 -ac'
cont_info 'starting selenium server'
su -c browser  -c "
    DISPLAY=:10 java -jar '{{ m.pkglibdir }}/selenium.jar'
"
