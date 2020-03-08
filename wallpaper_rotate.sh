#!/bin/bash
#simple bash script to download a random picture from unsplash and change your wallpaper

#categories, find more on unsplash.com
categories=nature,water,animals,wallpapers
#desired resolution of the image
resolution=1920x1080
#location to save the image
imagelocation=Pictures/Wallpapers/
#name of wallpaper image
wallpaper=wallpaper

#Download image using wget
wget -O /home/$USER/Pictures/Wallpapers/wallpaper https://source.unsplash.com/${resolution}?${categories}${wallpaper}

#Set downloaded image as wallpaper
gsettings set org.gnome.desktop.background picture-uri "/home/$USER/${imagelocation}${wallpaper}"

#Save downloaded wallpaper as a unique file using a date stamp
stamp=$(date +"%Y-%m-%d_%H:%M")
cp /home/$USER/${imagelocation} /home/$USER/${imagelocation}${wallpaper}_${stamp}.jpeg
