# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
	for rc in ~/.bashrc.d/*; do
		if [ -f "$rc" ]; then
			. "$rc"
		fi
	done
fi

##### My Custom Aliases #####
alias cdstorage="cd /mnt/storage"
alias handlexrandr="python3 /mnt/storage/Documents/os-setup/handle-xrandr/xrandr-setup.py"
alias copyconfigs="python3 /mnt/storage/Documents/os-setup/copy-configs/copy-configs.py"
alias pfcalculator="python3 /mnt/storage/Documents/os-setup/pf-calculator/pf-calculator.py"
#############################

unset rc
