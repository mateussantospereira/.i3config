if [ -e ~/.config/i3 ]; then
    if [ -e ~/.config/i3/config ]; then
        rm -f ~/.config/i3/config
        ln -s ~/.i3config/i3/config ~/.config/i3/config 
    else
        ln -s ~/.i3config/i3/config ~/.config/i3/config 
    fi
else
    mkdir ~/.config/i3/ -p
    ln -s ~/.i3config/i3/config ~/.config/i3/config 
fi

 
if [ -e ~/.config/i3status ]; then
    if [ -e ~/.config/i3status/config ]; then
        rm -f ~/.config/i3status/config
        ln -s ~/.i3config/i3status/config ~/.config/i3status/config 
    else
        ln -s ~/.i3config/i3status/config ~/.config/i3status/config 
    fi
else
    mkdir ~/.config/i3status/ -p
    ln -s ~/.i3config/i3status/config ~/.config/i3status/config 
fi
