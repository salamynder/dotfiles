alias shots='scrot  '\''%Y-%m-%d_$wx$h.jpg'\'' -e '\''mv $f ~/shots/'\'' -s -q100'
alias tusxstep='konsole --title "xstep" --profile xstep -e /home/tustep/start &'
alias tustmp='konsole --title "base" --profile tustep.profile --hide-tabbar -e /home/tustep/start tmp &'
alias tusfew='konsole --title "Französisches Etymologisches Wörterbuch" --profile tustep.profile --hide-tabbar -e /opt/tustep/start few &'
alias hdmi='xrandr --output HDMI1 --auto --above LVDS1 --primary'
alias hdmiright='xrandr --output HDMI1 --auto --primary --right-of LVDS1'
alias hdmicapture="xrandr --output HDMI1 --mode 1366x768"
alias hdmionly='xrandr --output HDMI1 --auto --output LVDS1 --off; eval $(~/.fehbg)'
alias vgaonly='xrandr --output VGA1 --auto --output LVDS1 --off; feh --bg-scale /usr/share/slim/themes/defaultdark/background.jpg'
alias vga2left='xrandr --output VGA1 --auto --primary --left-of LVDS1'
alias vga2right='xrandr --output VGA1 --auto --primary --right-of LVDS1'
alias vgaabove='xrandr --output VGA1 --auto --primary --above LVDS1'
alias vgaleft='xrandr --output VGA1 --rotate left'
alias vganormal='xrandr --output VGA1 --rotate normal'
alias lapdis='xrandr --output HDMI1 --off --output VGA1 --off --output LVDS1 --auto --primary'
alias beamer='xrandr --output VGA1 1024x768 --output LVDS1 --auto --primary'

#switch off power management of active monitors
#show current settings with 'xset -q'
alias vidbegin='xset -dpms; xset s off'
alias vidstop='xset dpms; xset s on'

alias wlstop='sudo netctl stop-all' 
alias wlnetg='sudo netctl start netgear' 
alias wlzimk='sudo netctl start zimk' 
alias wledu='sudo netctl start eduroam' 
alias wlhome='sudo netctl start stw2' 

alias my_sql='sudo systemctl start mysqld'
alias my_php='php -S 127.0.0.1:4001 -t ~/doks/psycho/htdocs/'

# work around: fcitx in emacs
alias chemacs='LC_CTYPE=zh_CN.UTF-8 emacs'


#everytime I plug in another USB-keyboard the CTRL-Key is not on CAPS :/
#putting this setting in xorg.conf doesn't help either, because restarting
#the Xserver is not an option
alias caps='xmodmap ~/.Xmodmap'
#screenshot by selected area
alias shots2="scrot '%Y-%m-%d_$wx$h.png' -e 'mv $f ~/shots/' -s"

