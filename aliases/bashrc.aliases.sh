# prevent some stupid human tricks
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
# -> Prevents accidentally clobbering files.
alias mkdir='mkdir -p'

# environment
alias envs='env|sort -f'
alias path='echo -e ${PATH//:/\\n}'
alias libpath='echo -e ${LD_LIBRARY_PATH//:/\\n}'
alias h='history'
alias j='jobs -l'
# alias which='type -a'
alias ..='cd ..'

# disk usage
alias du='du -kh'    # Makes a more readable output.
alias df='df -kTh'

# ls
alias ll='ls -lAF | egrep "^(d|total)" && ls -lAF | egrep -v "^(d|total)"'
# alias lk='ls -lSr'         #  Sort by size, biggest last.
# alias lt='ls -ltr'         #  Sort by date, most recent last.
# alias lc='ls -ltcr'        #  Sort by/show change time,most recent last.
# alias lu='ls -ltur'        #  Sort by/show access time,most recent last.
alias cl='clear && ls'     #  Clear the screen and long list

# tree
alias td2='tree ./ -d -L 2'
alias t2='tree ./ -L 2'

# networking
alias lanip='ifconfig | grep inet | grep broadcast | cut -d " " -f 2'
alias updatehosts='sudo node ~/Desktop/Home/Scripts/update_hosts_file/update_hosts.js'

alias projects='cd ~/Projects && ll'
alias xx='clear'
