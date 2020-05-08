#!/data/data/com.termux/files/usr/bin/bash
# Created By Hadi Khoirudin
pulseaudio --start
sleep 5
pactl load-module module-simple-protocol-tcp rate=48000 format=s16le channels=2 source=auto_null.monitor record=true port=8000 listen=127.0.0.1
