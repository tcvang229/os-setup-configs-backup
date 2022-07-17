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
alias cdstorage="cd /media/storage"
alias vim="vimx"
alias handlexrandr="python3 /media/storage/Documents/os-setup/handle-xrandr/xrandrsetup.py"
alias copyconfigs="python3 /media/storage/Documents/os-setup/handle-configs/copy-configs.py"
#############################

unset rc
