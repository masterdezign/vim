command_exists() {
	command -v "$@" >/dev/null 2>&1
}

setup_color() {
  # Only use colors if connected to a terminal
  if [ -t 1 ]; then
    RED=$(printf '\033[31m')
    GREEN=$(printf '\033[32m')
    YELLOW=$(printf '\033[33m')
    BLUE=$(printf '\033[34m')
    BOLD=$(printf '\033[1m')
    RESET=$(printf '\033[m')
  else
    RED=""
    GREEN=""
    YELLOW=""
    BLUE=""
    BOLD=""
    RESET=""
  fi
}

setup_vim() {
  # Prevent the cloned repository from having insecure permissions.
  umask g-w,o-w

  command_exists git || {
    error "git is not installed"
      exit 1
    }

  if [ -d $HOME/.vim ]; then
    echo "${BLUE}Backing up old Settings...${RESET}"
    mv $HOME/.vim $HOME/.vim-old
  fi

  if [ -f $HOME/.vimrc ]; then
    echo "${BLUE}Backing up old Settings...${RESET}"
    mv $HOME/.vimrc $HOME/.vimrc-old
  fi

  echo "${BLUE}Cloning Config...${RESET}"

  git clone https://github.com/masterdezign/vim $HOME/.vim || {
    error "git clone of vim config repo failed"
      exit 1
    }

  ln -s $HOME/.vim/.vimrc $HOME/.vimrc

  echo "${BLUE}Cloning Vundle...${RESET}"

  git clone https://github.com/gmarik/vundle.git $HOME/.vim/bundle/vundle || {
    error "git clone of vim config repo failed"
      exit 1
    }

  echo "${BLUE}Installing dependencies...${RESET}"
  vim +BundleInstall +qall

  rm -rf $HOME/.vim/bundle/snipmate.vim/snippets

  echo "Done"
  echo
}

main() {
  setup_color
  setup_vim
}

main "$@"
