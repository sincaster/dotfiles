export EDITOR=emacs
export PATH=$HOME/.local/bin:/opt/chromium:/usr/local/bin:/home/limo/git/nfu/build/:$PATH
export LANG=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8
export CLICOLOR=1
export QT_QPA_PLATFORMTHEME="qt5ct"
HISTFILE=$HOME/.ksh_history
HISTSIZE=20000
# alias ls="ls --color=auto -FHh"
alias la='ls -lA'
alias mkdir='mkdir -p'
alias df='df -h'
alias du='du -ch'
#alias kshconf="$EDITOR ~/.kshrc"
#alias hlconf="$EDITOR ~/.config/herbstluftwm/autostart"
#alias bspconf="$EDITOR ~/.config/bspwm/bspwmrc"
#alias sxhconf="$EDITOR ~/.config/sxhkd/sxhkdrc"
alias doas='doas '
alias sudo='sudo '
#alias ipp='curl ipinfo.io/ip'
#alias mixer='ncpamixer'
alias orar='zathura /home/limo/Documents/Tex/orar.pdf'

# projects
alias irr='cd /home/limo/Public/projects/c-cpp/irrlicht'

# functions
## stuff for kitty
#kimg()
#{
#    kitty +kitten icat "$@"
#}

# I don't use kitty anymore. Switched to xterm.

#alias ls="dir"

# PS1

# Reset
#Color_Off="\[\033[0m\]"       # Text Reset

# Regular Colors
#Black="\[\033[0;30m\]"      
#Red="\[\033[0;31m\]"          
#Green="\[\033[0;32m\]"        
#Yellow="\[\033[0;33m\]"       
#Blue="\[\033[0;34m\]"         
#Purple="\[\033[0;35m\]"       
#Cyan="\[\033[0;36m\]"         
#White="\[\033[0;37m\]"        

# Bold
#BBlack="\[\033[1;30m\]"       
#BRed="\[\033[1;31m\]"         
#BGreen="\[\033[1;32m\]"       
#BYellow="\[\033[1;33m\]"      
#BBlue="\[\033[1;34m\]"        
#BPurple="\[\033[1;35m\]"      
#BCyan="\[\033[1;36m\]"        
#BWhite="\[\033[1;37m\]"       

# Underline
#UBlack="\[\033[4;30m\]"       
#URed="\[\033[4;31m\]"         
#UGreen="\[\033[4;32m\]"       
#UYellow="\[\033[4;33m\]"      
#UBlue="\[\033[4;34m\]"        
#UPurple="\[\033[4;35m\]"      
#UCyan="\[\033[4;36m\]"        
#UWhite="\[\033[4;37m\]"       

# Background
#On_Black="\[\033[40m\]"       
#On_Red="\[\033[41m\]"         
#On_Green="\[\033[42m\]"       
#On_Yellow="\[\033[43m\]"      
#On_Blue="\[\033[44m\]"        
#On_Purple="\[\033[45m\]"      
#On_Cyan="\[\033[46m\]"        
#On_White="\[\033[47m\]"       

# High Intensty
#IBlack="\[\033[0;90m\]"       
#IRed="\[\033[0;91m\]"         
#IGreen="\[\033[0;92m\]"       
#IYellow="\[\033[0;93m\]"      
#IBlue="\[\033[0;94m\]"        
#IPurple="\[\033[0;95m\]"      
#ICyan="\[\033[0;96m\]"        
#IWhite="\[\033[0;97m\]"       

# Bold High Intensty
#BIBlack="\[\033[1;90m\]"      
#BIRed="\[\033[1;91m\]"        
#BIGreen="\[\033[1;92m\]"      
#BIYellow="\[\033[1;93m\]"     
#BIBlue="\[\033[1;94m\]"       
#BIPurple="\[\033[1;95m\]"     
#BICyan="\[\033[1;96m\]"       
#BIWhite="\[\033[1;97m\]"      

# High Intensty backgrounds
#On_IBlack="\[\033[0;100m\]"   
#On_IRed="\[\033[0;101m\]"     
#On_IGreen="\[\033[0;102m\]"   
#On_IYellow="\[\033[0;103m\]"  
#On_IBlue="\[\033[0;104m\]"    
#On_IPurple="\[\033[10;95m\]"  
#On_ICyan="\[\033[0;106m\]"    
#On_IWhite="\[\033[0;107m\]"   

# Various variables you might want for your PS1 prompt instead

#Time12h="\T"
#Time12a="\@"
#PathShort="\w"
#PathFull="\W"
#NewLine="\n"
#Jobs="\j"

#PS1="$(echo -e "\033[1;93m  ksh \033[1;95mλ \033[37m")"
PS1="$(echo -e "\033[1;93m  ksh \033[1;95m& \033[37m")"

set -o emacs