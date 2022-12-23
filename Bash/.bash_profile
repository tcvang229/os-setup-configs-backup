# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs
python3 /mnt/storage/Documents/os-setup/handle-xrandr/xrandr-setup.py
