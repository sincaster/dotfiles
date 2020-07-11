#!/usr/bin/env dash
# uses the dash shell
# you can replace it with "sh"

#set -euo pipefail
# ^^^ idk what this does

# prompt
printf "~> " && read picker

# ############# #
#  the manager  #
#  ###########  #
case $picker in
    *herbstluftwm*)

        HERBSTDIR=~/.config/herbstluftwm

        if [ ! -d $HERBSTDIR ]; then
            printf "DIRECTORY $HERBSTDIR DOES NOT EXIST! MAKING ONE...\n" && mkdir $HERBSTDIR; cp herbstluftwm/* $HERBSTDIR
        elif [ -d ~/.config/herbstluftwm ]; then
            printf "Directory exists, copying files...\n"
        fi

        # define some stuff
        HAUTOSTART=~/.config/herbstluftwm/autostart
        HPANEL=~/.config/herbstluftwm/panel.sh
        HRESTART=~/.config/herbstluftwm/restartpanels.sh

        # if the files aren't the same
        if ! cmp $PWD/herbstluftwm/autostart $HAUTOSTART; then
            cp $PWD/herbstluftwm/autostart $HAUTOSTART

        elif ! cmp $PWD/herbstluftwm/panel.sh $HPANEL; then
            cp $PWD/herbstluftwm/panel.sh $HAPNEL

        elif ! cmp $PWD/herbstluftwm/restartpanels.sh $HRESTART; then
            cp $PWD/herbstluftwm/restartpanels.sh $HRESTART

        fi

        # check if the files exist
        if [ -f $HAUTOSTART ]; then
            printf "[OK]\n"
        else
            printf "[ERROR]\n"
        fi

        # check if the config files
        # were copied correctly
        if [ -f $HPANEL ]; then
            printf "[OK]\n"
        else
            printf "[ERROR]\n"
        fi

        if [ -f $HRESTART ]; then
            printf "[OK]\n"
        else
            printf "[ERROR]\n"
        fi

        ;;

    *waybar*)

        WAYBARDIR=~/.config/waybar
        if [ ! -d $WAYBARDIR ]; then
            printf "DIRECTORY $WAYBARDIR DOES NOT EXIST! MAKING ONE...\n"
        elif [ -d $WAYBAR ]; then
            printf "Directory exists, copying files...\n" && cp $PWD/waybar/* $WAYBARDIR
        fi

        # define some stuff
        WAYBARCONF=~/.config/waybar/config
        WAYBARCSS=~/.config/waybar/style.css

        # if the files aren't the same
        if ! cmp $PWD/waybar/config $WAYBARCONF; then
            cp $PWD/waybar/config $WAYBARCONF
        else ! cmp $PWD/waybar/style.css $WAYBARCSS
        fi

        # check if the config files
        # were copied correctly
        if [ -f $WAYBARCONF ]; then
            printf "[OK]\n"
        else
            printf "[ERROR]\n"
        fi

        if [ -f $WAYBARCSS ]; then
            printf "[OK]\n"
        else
            printf "[ERROR]\n"
        fi

        ;;

    *ksh*)

        if [ ! -d ~/.kshrc ]; then
            cp $PWD/ksh/.kshrc ~/.kshrc

        elif ! cmp $PWD/ksh/.kshrc ~/.kshrc; then
            printf "File exists, overwriting...\n" && cp $PWD/ksh/.kshrc ~/.kshrc
        fi

        if [ -f ~/.kshrc ]; then
            printf "[OK]"
        else
            printf "[ERROR]"
        fi

        ;;

    #*bspwm*)

#        if [ ! -d ~/.config/bspwm ]

   
esac

 ####################
# options/arguments  #
 ####################

while getopts h:-help opts; do
    case "${opts}"
         in
              h) echo          "df-manager.sh

df-manager.sh is a shell (sh) script
that manages your dotfiles or my dotfiles

EXAMPLE: $PS1 sh df-manager.sh (in the directory of the script)
~> herbstluftwm

[OK]
[OK]
[OK]
(^^ info messages)

It currently works only on herbstluftwm, waybar and on ksh"
;;
              -help) echo "mars";;
    esac
done
