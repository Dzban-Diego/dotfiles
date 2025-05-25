#!/bin/bash

declare -a options=("phpstorm
chrome
jagódki
blueberry
github
alacritty
spotify
fonty
zoom
obsidian
notatki
audio
mikser
sieć
sieć-dmenu
internety")

choice=$(echo -e "${options[@]}" | dmenu -l -i -p 'Odpalacz: ' -fn Hack)

case $choice in
  'chrome')
    google-chrome-stable
  ;;
  'phpstorm')
    phpstorm.sh
  ;;
  'jagódki')
    blueberry
  ;;
  'fonty')
    font-manager
  ;;
  'notatki')
    obsidian
  ;;
  'github')
    github-desktop
  ;;
  'internety' | 'sieć')
    nm-connection-editor
  ;;
  'sieć-dmenu')
    networkmanager_dmenu
  ;;
  'audio' | 'mikser')
    pavucontrol
  ;;
  *)
    $choice
  ;;
esac
