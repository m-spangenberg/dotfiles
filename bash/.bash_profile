#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

# hide startx messages
# https://wiki.archlinux.org/title/silent_boot
[[ $(fgconsole 2>/dev/null) == 1 ]] && exec startx -- vt1 &> /dev/null
