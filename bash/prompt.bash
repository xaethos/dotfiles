GIT=$(which git)

__git_info() {
  local st

  st=$($GIT status 2>/dev/null | tail -n 1)
  if [[ $st == "" ]]
  then
    echo ""
  else
    echo "[$(__git_branch "$st")$(__git_need_push)]"
  fi
}

__git_branch () {
  local color
  local ref

  if [[ $1 == "nothing to commit (working directory clean)" ]]
  then
    color='bold fg_grn'
  else
    color='bold fg_red'
  fi

  ref=$($GIT symbolic-ref HEAD 2>/dev/null) || return
  colorize "$color" "${ref#refs/heads/}"
}

__git_need_push () {
  local count

  count=$($GIT cherry -v @{upstream} 2>/dev/null | wc -l)
  count=${count// /}

  if [[ $count -gt 0 ]]
  then
    colorize 'bold fg_mag' "+$count"
  fi
}

__user_name(){
  local color

  if [[ $USER == 'root' ]]
  then
    color='fg_red'
  else
    color='fg_ylw'
  fi
  colorize $color $USER
}

if [ $(uname -s) = "Linux" ] 
then
  __host_name(){
    colorize 'fg_mag' '\h'
  }

  __directory_name(){
    colorize 'bold fg_cyn' '\w'
  }
else
  __host_name(){
    colorize 'fg_mag' $HOSTNAME
  }

  __directory_name(){
    colorize 'bold fg_cyn' "$(basename "$PWD")"
  }
fi

__prompt_cmd() {
  export PS1="$(__user_name)@$(__host_name):$(__directory_name) $(__git_info)\$ "
}

export PROMPT_COMMAND=__prompt_cmd

