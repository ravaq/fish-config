#besme-Allah

#if status is-interactive
    # Commands to run in interactive sessions can go here
#end

set -g EDITOR micro

## Aliases
#Package manage
alias pmu='sudo pacman -Syu'       # Update the system and upgrade all system packages.
alias pin='sudo pacman -S'         # Install a specific package from repos added to the system
alias pmd='sudo pacman -U'         # Install specific package that has been downloaded to the local system
alias pir='pacman -Si'             # Display information about a given package located in the repositories
alias pil='pacman -Qi'            # Display information about a given package in the local database
alias pmss='pacman -Ss'             # Search for package or packages in the repositories
alias pmrr='sudo pacman -R'         # Remove the specified package but retain its configuration and deps
alias pmr='sudo pacman -Rns'    # Remove package, its configuration and all unwanted dependencies
alias pms='pacman -Qs'          # Search for package/packages in the local database
alias pmc='sudo pacman -Scc'

alias uu='yay'
alias ui='yay -S'
alias yp='yay -Ps'
alias yc='yay -Yc'
alias ycs='yay -Sc'
alias yu='yay -Syua'        # Synchronize with repositories and upgrade packages, including AUR packages.
alias yi='yay -S'           # Install a specific package from repos added to the system
alias yil='yay -U'          # Install specific package that has been downloaded to the local system
alias yrr='yay -R'           # Remove package but retain configs and required dependencies
alias yr='yay -Rns'      # Remove package or packages, its configuration and all unwanted dependencies
alias yss='yay -Ss'          # Search for package or packages in the repositories
alias ys='yay -Qs'         # Search for package(s) in the local database
alias yl='yay -Qe'         # List installed packages, even those installed from AUR (they're tagged as "local")
alias por='yay -Qtd'        # Remove orphans using yay

#List commands
alias lc='compgen -c | sort -u'
alias la='compgen -a | sort -u'
alias lb='compgen -b | sort -u'
alias lk='compgen -k | sort -u'
alias lf='compgen -A function | sort -u'
alias lA='compgen -A function -abck | sort -u'


alias mpi='makepkg -si'


#Package list
alias lp='expac -H M "%011m\t%-20n\t%10d" $(comm -23 <(pacman -Qqen | sort) <({ pacman -Qqg xorg; expac -l '\n' '%E' base; } | sort -u)) | sort -n'
alias lpp='LC_ALL=C pacman -Qi | awk "/^Name/{name=$3} /^Installed Size/{print $4$5, name}" | sort -h'
alias lpl='expac --timefmt="%Y-%m-%d %T" "%l\t%n" | sort | tail -n 20'
alias lpn='expac -H M "%-20n\t%10d" $(comm -23 <(pacman -Qqt | sort) <({ pacman -Qqg xorg; echo base; } | sort -u))'
alias lpti='expac --timefmt="%Y-%m-%d %T"-H M "%011l\t%-11m\t%-25n\t%10d" $(comm -23 <(pacman -Qqen | sort) <({ pacman -Qqg xorg; expac -l "\n" "%E" base; } | sort -u)) | sort -n'
alias lpt='expac --timefmt="%Y-%m-%d %T" -H M "%011l\t%-9m\t%-25n\t%10d" | sort -n'
alias lpf='expac -H M "%-13m\t%-20n\t%10d" | sort -n'
alias lptt='awk "/\[ALPM\] installed/ { print $(NF-1) }" /var/log/pacman.log'

#Folders and files
alias gf='cd ~/.git'
alias gg='getgit'
alias gi='getgit -i'

alias oh='xdg-open ./'
#alias suoh='gksudo xdg-open ./'
alias cachy='xdg-open /home/mhm/.cache/yay'
alias cachp='xdg-open /var/cache/pacman/pkg'
alias rcap='sudo rm /var/cache/pacman/pkg/*'
alias rcay='sudo rm -r /home/mhm/.cache/yay/*'
alias rca='rcay && rcap'


#alias dus='du  * | sort -nr | while read size fname; do for unit in k M G T P E Z Y; do if [ $size -lt 1024 ]; then echo -e "${size}${unit}\t${fname}"; break; fi; size=$((size/1024)); done; done'

alias ls='ls --color=auto'
alias ll='ls -lav --ignore=..'   # show long listing of all except ".."
alias cls='clear'

#web
alias arcdb='web_query --arch'
alias aurdb='web_query --aur'
alias google='web_query -ggl'
alias alts='web_query --alt'
alias gourl='web_query -url'


#Lite-xl plugin manager
alias lxpi='lpm install'
alias lxpr='lpm uninstall'
alias lxpu='lpm upgrade'


