#!/usr/bin/env sh
gsettings set com.deepin.wrap.gnome.mutter.keybindings toggle-tiled-right "['<Super>Right']"
gsettings set com.deepin.wrap.gnome.mutter.keybindings toggle-tiled-left "['<Super>Left']"
gsettings set com.deepin.wrap.gnome.mutter.keybindings tab-popup-cancel "['']"
gsettings set com.deepin.wrap.gnome.mutter.keybindings tab-popup-select "['']"

# Comandos para split da janela
# qdbus com.deepin.wm /com/deepin/wm com.deepin.wm.TileActiveWindow 2
# qdbus com.deepin.wm /com/deepin/wm com.deepin.wm.TileActiveWindow 1
