# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# zshrc by Nick Camillo
# http://dev.nickcamillo.com/portfolio
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# MoMA Stuff
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  export CLICOLOR=1
  export LSCOLORS=ExFxCxDxBxegedabagacad

  alias xctool='~/Projects/xctool/xctool.sh'
  # alias mm='cd ~/workspace/moma.org/'
  alias m2='cd ~/workspace/moma.org.rails2/'
  # alias mmgo='cd ~/workspace/go/src/github.com/momadigitalmedia/moma-go/'
  alias mserver='cd ~/workspace/server-config'
  alias ma='cd ~/workspace/ios-app-2'
  # alias ms='cd ~/workspace/static'
  alias rss='./bin/start_server.sh local --ruby=$(rbenv which ruby)'
  alias rtp='bundle exec rake parallel:rake[db:run_materialized_views]'
  alias logs='cd /var/log/nginx'

  alias mk='cd ~/workspace/moma.org.kubed/'
  alias mmgo='cd ~/workspace/moma.org.kubed/repos/moma-go/'
  alias ms='cd ~/workspace/moma.org.kubed/repos/static'
  alias mm='cd ~/workspace/moma.org.kubed/repos/moma.org.rails4/'

  alias mks='minikube start --extra-config=apiserver.service-node-port-range=0-50000 -v 5 --mount-string="$HOME/workspace/moma.org.kubed:/mnt/moma.org.kubed" --mount --insecure-registry="harbor.museum.moma.org" --kubernetes-version v1.12.7 && kubectl config use-context local && kubectl get all'

  alias dbpw='echo $(kubectl get secret db-beta-local-postgresql -o "jsonpath={.data.postgresql-password}" | base64 --decode)'


# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# PATH Definitions
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  export ZSH=$HOME/.oh-my-zsh
  export PATH=/Users/nickcamillo/.rbenv/shims:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:$PATH:/Library/Python/3.6/bin:/Library/Python/3.4/bin:/usr/local/opt/mongodb@3.4/bin:/usr/local/go/bin
  export PATH="$(brew --prefix qt@5.5)/bin:$PATH"
  export GOPATH=""
  export PATH=$HOME/workspace/go/bin:$PATH
  export PKG_CONFIG_PATH=\"/usr/local/opt/libxml2/lib/pkgconfig:\$PKG_CONFIG_PATH\"

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# Theme Options
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  GEOMETRY_COLOR_DIR="8"
  PROMPT_GEOMETRY_EXEC_TIME=true
  ZSH_THEME="geometry/geometry"
  COMPLETION_WAITING_DOTS="true"

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# Plugins
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  plugins=(git ruby history history-substring-search terminallap brew zsh-syntax-highlighting heroku tmux)
  source $ZSH/oh-my-zsh.sh

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# Aliases
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  alias b="cd .."
  alias e="exit"
  alias reload="source ~/.zshrc; tmux source-file .tmux.conf"
  alias chrome="open -a 'Google Chrome'"
  alias work="rake jobs:work"
  alias pushitgood="rake heroku:deploy"
  alias dotfiles="cd ~/dotfiles"
  alias tmux="tmux attach"
  alias cat="bat"
  alias owi="cd ~/projects/nickcamillo/bidmessenger; clear; echoBiddy"
  alias blog="cd ~/projects/nickcamillo/blog; clear; echoGnome"
  alias todo="cd ~/projects/todo; clear; vi README.md +Pencil;"
  alias def="cd ~/projects/def_method; clear; echoDefMethod"
  alias dui="cd ~/projects/def_method/dependable-ui; clear; echoDefMethod"
  alias dapi="cd ~/projects/def_method/dependable-api; clear; echoDefMethod"
  alias afb="cd ~/projects/def_method/affordable/BackEndMaster; clear; echoDefMethod"
  alias aff="cd ~/projects/def_method/affordable/FrontEndMaster; clear; echoDefMethod"

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# ASCII Colors
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  green="$(tput setaf 2)"
  blue="$(tput setaf 4)"
  teal="$(tput setaf 6)"
  white="$(tput setaf 7)"
  grey="$(tput sgr0)"
  pur="$(tput setaf 7)"
  red="$(tput setaf 1)"
  tan="$(tput setaf 3)"
  default="$(tput sgr0)"

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# ASCII Gnome Greeting
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  echoGnome() {
    echo -e "$teal".............."$red"OCC"$teal"....................................................................
    echo -e "$teal"............"$red"OO8OC"$teal"....................................................................
    echo -e "$teal"............."$red"OO88OOO"$teal".........................................0000....................
    echo -e "$teal"..............."$red"OOCCC"$teal".......................................000000000.................
    echo -e "$teal"..............."$red"OOCCCCCC"$teal"..................................00000......0................
    echo -e "$teal"............"$red"OO8OOCCCCoC"$teal".................................00000........................
    echo -e "$teal"............"$red"OO8OCCCCCCCCC"$teal"..............................00000.........................
    echo -e "$teal".........."$red"OO88OCCCCCCCCCC"$teal"..............................00000.........................
    echo -e "$teal"........."$red"OO8OCCCCCCCCoCCCOOO"$teal"...........................00000.........................
    echo -e "$teal"........."$red"OO8OOCCCCCCCCCCCCCCCCC"$teal".........................00000.........0..............
    echo -e "$teal"........"$red"8OOCCCCCCCCCCCCCCCCoCCCCCO"$teal"........................00000......00..............
    echo -e "$teal"......"$red"OO8OCCCCCCCCCCCCCCCCCCCCCCCCCCO"$teal"........................000000000...............
    echo -e "$teal"......"$red"OO8OCCCC"$tan"88888888888888888"$red"CoCCCO"$teal"...........................0000.................
    echo -e "$teal"......"$red"OOOooCOO"$tan"O"$white"@@"$grey"OOO"$tan"88888"$white"@@@"$grey"OOO"$red"OOoooO"$teal"................................................
    echo -e "$teal"......"$tan"88"$pur"CccC"$tan"88"$white"@@@"$blue"OOO"$tan"88888"$white"@@@"$blue"OOO"$tan"88"$pur"CccC"$tan"88"$teal"..............................................
    echo -e "$teal"..."$pur"ccc"$tan"88"$pur"CccC"$tan"888888880000088888888"$pur"CccC"$tan"88"$pur"Ccc"$teal"...........................................
    echo -e "$teal"..."$pur"ccc"$tan"88"$pur"CccC"$tan"888888880000088888888"$pur"CccC"$tan"88"$pur"Ccc"$teal"...........................................
    echo -e "$teal"......"$pur"cccccccccccccccccccccccccccccccccO"$teal".............................................
    echo -e "$teal"..."$pur"ccccccccccccccccc"$tan"88888"$pur"ccccccccccccccccc"$teal"...........................................
    echo -e "$teal"..."$pur"ccc"$blue"::"$pur"ccccccccccccccccccccccccccccc"$blue"::C"$teal".............................................
    echo -e "$teal"......"$blue"::"$pur"ccccccccccccccccccccccccccccc"$blue"::ccc"$teal"...........................................
    echo -e "$teal"..."$blue"cccccc::"$pur"ccccccccccccccccccccccc"$blue":::::cccccc"$teal"........................................
    echo -e "$teal"..."$blue"ccccccccc::"$pur"ccccccccccccccccc"$blue":::::ccccccccc"$teal"........................................
    echo -e "$teal"..."$blue"cccccccccccc:::::ccccc"$blue":::::::::ccccccc:ccc"$teal"........................................
  }

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# ASCII Biddy Greeting
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  echoBiddy() {
    echo -e "$blue"ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ
    echo -e "$blue"ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ"$white"....................."$blue"ZZZZZZZZZZZZZZZZZZZZZZZZZZZZ
    echo -e "$blue"ZZZZZZZZZZZZZZZZZZZZZZZZZZZ"$white"............................"$blue"ZZZZZZZZZZZZZZZZZZZZZZZZZ
    echo -e "$blue"ZZZZZZZZZZZZZZZZZZZZZZZZI"$white"................................"$blue"7ZZZZZZZZZZZZZZZZZZZZZZ
    echo -e "$blue"ZZZZZZZZZZZZZZZZZZZZZZZ"$white"...................................."$blue"IZZZZZZZZZZZZZZZZZZZZ
    echo -e "$blue"ZZZZZZZZZZZZZZZZZZZZZZI"$white"....................................."$blue"ZZZZZZZZZZZZZZZZZZZZ
    echo -e "$blue"ZZZZZZZZZZZZZZZZZZZZZ"$white"........................................"$blue"ZZZZZZZZZZZZZZZZZZZ
    echo -e "$blue"ZZZZZZZZZZZZZZZZZZZZ"$white"........................................."$blue"ZZZZZZZZZZZZZZZZZZZ
    echo -e "$blue"ZZZZZZZZZZZZZZZZZZZZ"$white"........................................."$blue"7ZZZZZZZZZZZZZZZZZZ
    echo -e "$blue"ZZZZZZZZZZZZZZZZZZZZ"$white".........................................."$blue"ZZZZZZZZZZZZZZZZZZ
    echo -e "$blue"ZZZZZZZZZZZZZZZZZZZ"$white"..................................................."$blue"ZZZZZZZZZZ
    echo -e "$blue"ZZZZZZZZZZZZZZZZZZZZ"$white"....................."$blue"ZZZZZZZ"$white"...................."$blue"ZZZZZZZZZZZZ
    echo -e "$blue"ZZZZZZZZZZZZZZZZZZZZZ7"$white".................."$blue"ZZZZZZZZZ"$white"..........."$blue"ZZZZZZZZZZZZZZZZZZZZ
    echo -e "$blue"ZZZZZZZZZZZZZZZZZZZZZZZZZZZ7"$white"............"$blue"ZZZZZZZZZ"$white".............."$blue"ZZZZZZZZZZZZZZZZZ
    echo -e "$blue"ZZZZZZZZZZZZZZZZZZZZZZZZZZ7"$white".............."$blue"ZZZZZZZ"$white"................"$blue"ZZZZZZZZZZZZZZZZ
    echo -e "$blue"ZZZZZZZZZZZZZZZZZZZZZZZZZ7"$white"........................................"$blue"7ZZZZZZZZZZZZZ
    echo -e "$blue"ZZZZZZZZZZZZZZZZZZZZZZZZZ"$white"..............................."$blue"ZZZZ"$white"......."$blue"7ZZZZZZZZZZZZ
    echo -e "$blue"ZZZZZZZZZZZZZZZZZZZZZZZZ7"$white"............................."$blue"IZZZZZZZZZ"$white"......"$blue"7ZZZZZZZZZ
    echo -e "$blue"ZZZZZZZZZZZZZZZZZZZZZZZZ"$white"............................."$blue"IZZZZZZZZZZZZZ"$white"...."$blue"ZZZZZZZZZ
    echo -e "$blue"ZZZZZZZZZZZZZZZZZZZZZZZ7"$white"............................."$blue"ZZZZZZZZZZZZZZZZZZZZZZZZZZZ
    echo -e "$blue"ZZZZZZZZZZZZZZZZZZZZZZZ"$white".............................."$blue"IZZZZZZZZZZZZZZZZZZZZZZZZZZ
    echo -e "$blue"ZZZZZZZZZZZZZZZZZZZZZZ"$white"................................"$blue"IZZZZZZZZZZZZZZZZZZZZZZZZZ
    echo -e "$blue"ZZZZZZZZZZZZZZZZZZZZZ"$white".................................."$blue"7ZZZZZZZZZZZZZZZZZZZZZZZZ
    echo -e "$blue"ZZZZZZZZZZZZZZZZZZZZZ"$white"..................................."$blue"ZZZZZZZZZZZZZZZZZZZZZZZZ
    echo -e "$blue"ZZZZZZZZZZZZZZZZZZZZ"$white"...................................."$blue"IZZZZZZZZZZZZZZZZZZZZZZZ
    echo -e "$blue"ZZZZZZZZZZZZZZZZZZZZ"$white"....................................."$blue"7ZZZZZZZZZZZZZZZZZZZZZZ
    echo -e "$blue"ZZZZZZZZZZZZZZZZZZZ"$white"......................................."$blue"ZZZZZZZZZZZZZZZZZZZZZZ
    echo -e "$blue"ZZZZZZZZZZZZZZZZZZ"$white"........................................"$blue"IZZZZZZZZZZZZZZZZZZZZZ
  }

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# ASCII Def Method Greeting
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  echoDefMethod() {
    echo -e ..............................................................................
    echo -e ....ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ......................ZZZZZZZZZZZZ....
    echo -e ....ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ....................ZZZZZZZZZZZZZ....
    echo -e ....ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ..................ZZZZZZZZZZZZZZ....
    echo -e ....ZZZZZZ.........................ZZZZZZZZ................ZZZZZZZZZZZZZZZ....
    echo -e ....ZZZZZZ................"$green"7777777"$default"...ZZZZZZZZ..............ZZZZZZZZZZZZZZZZ....
    echo -e ....ZZZZZZ................."$green"7777777"$default"...ZZZZZZZZ............ZZZZZZZZ..ZZZZZZZ....
    echo -e ....ZZZZZZ.................."$green"7777777"$default"...ZZZZZZZZ..........ZZZZZZZZ...ZZZZZZZ....
    echo -e ....ZZZZZZ..................."$green"7777777"$default"...ZZZZZZZZ........ZZZZZZZZ....ZZZZZZZ....
    echo -e ....ZZZZZZ...................."$green"7777777"$default"...ZZZZZZZZ......ZZZZZZZZ.....ZZZZZZZ....
    echo -e ....ZZZZZZ....................."$green"7777777"$default"...ZZZZZZZZ....ZZZZZZZZ......ZZZZZZZ....
    echo -e ....ZZZZZZ......................"$green"7777777"$default"...ZZZZZZZZZ.ZZZZZZZZ.......ZZZZZZZ....
    echo -e ....ZZZZZZ......................."$green"7777777"$default"...ZZZZZZZZZZZZZZZZ........ZZZZZZZ....
    echo -e ....ZZZZZZ........................"$green"7777777"$default"...ZZZZZZZZZZZZZZ.........ZZZZZZZ....
    echo -e ....ZZZZZZ........................"$green"7777777"$default"....ZZZZZZZZZZZZ..........ZZZZZZZ....
    echo -e ....ZZZZZZ......................."$green"7777777"$default"...........................ZZZZZZZ....
    echo -e ....ZZZZZZ......................"$green"7777777"$default"............................ZZZZZZZ....
    echo -e ....ZZZZZZ....................."$green"7777777"$default".............................ZZZZZZZ....
    echo -e ....ZZZZZZ...................."$green"7777777"$default"..............................ZZZZZZZ....
    echo -e ....ZZZZZZ..................."$green"7777777"$default"...............................ZZZZZZZ....
    echo -e ....ZZZZZZ.................."$green"7777777"$default"................................ZZZZZZZ....
    echo -e ....ZZZZZZ................."$green"7777777"$default".................................ZZZZZZZ....
    echo -e ....ZZZZZZ.........................................................ZZZZZZZ....
    echo -e ....ZZZZZZZZZZZZZZZZZZZZZZZZZZZZ...................................ZZZZZZZ....
    echo -e ....ZZZZZZZZZZZZZZZZZZZZZZZZZZZ....................................ZZZZZZZ....
    echo -e ....ZZZZZZZZZZZZZZZZZZZZZZZZZZ.....................................ZZZZZZZ....
    echo -e ..............................................................................
  }

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# ASCII Greeting Logic
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  if [[ "$PWD" == "/Users/nickcamillo/projects/bidmessenger/owi" ]]
    then
    echoBiddy;
  elif [[ "$PWD" =~ "/Users/nickcamillo/projects/def_method" ]]
    then
      echoDefMethod;
  else
    echoGnome;
  fi

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# Open rbenv
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  eval "$(rbenv init -)"

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# TMUX
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#  # open tmux on terminal open
#  if [[ ! $TERM =~ screen ]]; then
#      exec tmux
#  fi

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# Autojump
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  [[ -s `brew --prefix`/etc/autojump.sh ]] && . `brew --prefix`/etc/autojump.sh

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# FZF
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
export FZF_DEFAULT_COMMAND='ag -g ""'


export TERM=xterm-256color
export PKG_CONFIG_PATH="/usr/local/opt/libxml2/lib/pkgconfig:$PKG_CONFIG_PATH"
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
export PATH="/usr/local/opt/libiconv/bin:$PATH"
export PATH="/usr/local/opt/libxslt/bin:$PATH"
export PATH="$PATH:/opt/yarn-[version]/bin"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
