# Load rvm so you can access Ruby
source "$HOME/.rvm/scripts/rvm"
source ~/.profile

# Take you to the dir of a file in a gem. e.g. `2gem rspec`
2gem () {
  cd "$(dirname $(gem which $1))"
}

#term aliases
alias cdt='cd ~/Documents/coding/Turing'
alias cdh='cd ~/Documents/coding/Turing/module_3'
alias cdp='cd ~/Documents/coding/Turing/module_3/projects'

function mkcd () {
  mkdir $1
  cd $1
}
alias sbp="source ~/.bash_profile"
# Git aliases
alias gs="git status"
alias gd="git diff --patience --ignore-space-change"
alias gc="git checkout"
alias gb="git branch"
alias ga="git add ."
alias gh="git hist"
alias gcmt="git commit -m"
alias gpu='git push --set-upstream origin HEAD'

# fancy ls command
# -l  long format
# -F  / after dirs, * after exe, @ after symlink
# -G  colorize
# -g suppress owner
# -o suppress group
# -h humanize sizes
# -q print nongraphic chars as question marks
alias l="ls -lFGgohq"

# Enable git's tab-completion library
source /usr/local/etc/bash_completion.d/git-completion.bash

# Shortcut for bundle exec
alias be="bundle exec"

# Prompt
  function parse_git_branch {
    branch=`git rev-parse --abbrev-ref HEAD 2>/dev/null`
    if [ "HEAD" = "$branch" ]; then
      echo "(no branch)"
    else
      echo "$branch"
    fi
  }

  export PS1="\w ▷ "

  # function prompt_segment {
  #   # for colours: http://en.wikipedia.org/wiki/ANSI_escape_code#Colors
  #   # change the 37 to change the foreground
  #   # change the 45 to change the background
  #   if [[ ! -z "$1" ]]; then
  #     echo "\[\033[${2:-37};45m\]${1}\[\033[0m\]"
  #   fi
  # }
  #
  # function build_mah_prompt {
  #   # time
  #   ps1="$(prompt_segment " \@ ")"
  #
  #   # cwd
  #   ps1="${ps1} $(prompt_segment " \w ")"
  #
  #   # git branch
  #   git_branch=`parse_git_branch`
  #   if [[ ! -z "$git_branch" ]]
  #   then
  #     ps1="${ps1} $(prompt_segment " $git_branch " 32)"
  #   fi
  #
  #   # next line
  #   ps1="${ps1}\n\$ "
  #
  #   # set prompt output
  #   PS1="$ps1"
  # }
  #
  # PROMPT_COMMAND='build_mah_prompt'
