# busylight-linux-auto
Some helper items for the busylight on Linux

This assumes you have installed the busylight-for-humans python module and will use it on localhost: https://pypi.org/project/busylight-for-humans/

Copy the alias files (or lines) to the .bashrc/.bash_aliases file or a file it calls.

The Unit file "busyserver.service" is intended to run the web server as a service (instead of having to type busyserve -d all the time)
The Unit file "busylight-locksereen.service" is intended to automate changing colors for when the screen is locked and when it is unlocked. As it is, yellow is locked when when unlocked, it will turn green. You will need to copy the appropriate script to your PC (bllockscreen.sh or bllockscreen-kde.sh) and give it execute (chmod +x).

Copy the Unit files to /etc/systemd/system/{{ filename }}


