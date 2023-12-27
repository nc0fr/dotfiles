# Copyright 2023 Nicolas Paul. All rights reserved.
# Use of this source code is governed by a BSD-style
# license that can be found in the LICENSE file.

export GPG_TTY=$(tty)

export PATH="/opt/homebrew/bin:/opt/homebrew/sbin:$PATH:/Users/nc0/.cargo/bin"
export PATH="$PATH:/Users/nc0/go/bin"

export ZSH="$HOME/.oh-my-zsh"
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="ys"
zstyle ':omz:update' mode auto
zstyle ':omz:update' frequency 14
# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"
DISABLE_UNTRACKED_FILES_DIRTY="true"
HIST_STAMPS="mm/dd/yyyy"
plugins=(git colored-man-pages colorize)
source $ZSH/oh-my-zsh.sh

export MANPATH="/usr/local/man:$MANPATH"

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='nvim'
else
  export EDITOR='vi'
fi

