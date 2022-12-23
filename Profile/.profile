export QT_QPA_PLATFORMTHEME="qt5ct"
export EDITOR=/usr/bin/nano
export GTK2_RC_FILES="$HOME/.gtkrc-2.0"
# fix "xdg-open fork-bomb" export your preferred browser from here
export BROWSER=/usr/bin/palemoon
export EDITOR=vim

# User specific environment and startup programs
python3 /mnt/storage/Documents/os-setup/handle-xrandr/xrandr-setup.py
