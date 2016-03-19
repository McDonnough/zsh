# modified
if grep --color "a" <<<"a" &>/dev/null; then
    alias grep='grep --color=auto'
fi
if egrep --color "a" <<<"a" &>/dev/null; then
    alias egrep='egrep --color=auto'
fi
if fgrep --color "a" <<<"a" &>/dev/null; then
    alias fgrep='fgrep --color=auto'
fi
alias mkdir='mkdir -p -v'
alias df='df -h'

# new
alias path='echo -e ${PATH//:/\\n}'
alias now='date "+%T"'
alias today='date +"%d-%m-%Y"'
alias ports='netstat -tulanp'
alias tree="find . -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'"
alias lines='wc -l'
alias sprunge="curl -F 'sprunge=<-' http://sprunge.us"

extract () {
  if [ -f $1 ] ; then
      case $1 in
          *.tar.bz2)   tar xvjf $1    ;;
          *.tar.gz)    tar xvzf $1    ;;
          *.bz2)       bunzip2 $1     ;;
          *.rar)       rar x $1       ;;
          *.gz)        gunzip $1      ;;
          *.tar)       tar xvf $1     ;;
          *.tbz2)      tar xvjf $1    ;;
          *.tgz)       tar xvzf $1    ;;
          *.zip)       unzip $1       ;;
          *.Z)         uncompress $1  ;;
          *.7z)        7za x $1        ;;
          *)           echo "don't know '$1'..." ;;
      esac
  else
      echo "'$1' is not a valid file!"
  fi
}
