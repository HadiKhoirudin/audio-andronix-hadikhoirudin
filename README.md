# audio-andronix-hadikhoirudin
Fix Audio Port Andronix

Follow this instruction ...

1.Install pulseaudio on thermux

    pkg install pulseaudio
  
2. Install nano on thermux

    pkg install nano
  
3. go pulse folder

    cd /data/data/com.thermux/files/usr/etc/pulse

4. edit daemon.conf with nano

    nano daemon.conf

    change this line ;exit-idle-time = 20 

    to                exit-idle-time = -1

    Then write file with CTRL+O and enter to save then CTRL+x to exit nano

5. edit default.pa with nano

    nano default.pa

    add this line in the end
    
    #{start of lines

    #patches

    load-module-native-protocol-tcp auth-ip-acl-127.0.0.1 auth-anonymous=1

    #end of lines}
    
    write file with CTRL+O and enter to save then CTRL+x to exit nano

6. edit file permission of audio.sh

    chmod 755 audio.sh

7. run with ./audio.sh

    if output is 17, 18, or 19 without error, congratulation pulseaudio running correctly...

8. install simple protocol player application from playstore

    Then setting

    IP Address  : localhost

    Audio port  : 8000

    Sample rate : 48000

    Enable network retries : checked
    
9. install pulseaudio on linux and reboot your phone

10. run ./audio.sh

11. run simple protocol player

12. run your linux

13. run this command export PULSE_SERVER=tcp:127.0.0.1

14. run vncserver-start

15. Enjoy... 

15. run vnc applicattion and finish
