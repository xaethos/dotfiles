autoload colors && colors
# cheers, @ehrenmurdick
# http://github.com/ehrenmurdick/config/blob/master/zsh/prompt.zsh

GIT="/usr/bin/git"

git_info() {
  st=$($GIT status 2>/dev/null | tail -n 1)
  if [[ $st == "" ]]
  then
    echo ""
  else
    if [[ $st == "nothing to commit (working directory clean)" ]]
    then
      COLOR=green
    else
      COLOR=red
    fi
    echo "[%{$fg_bold[$COLOR]%}$(git_branch)%{$reset_color%}$(need_push)]"
  fi
}

git_branch () {
 ref=$($GIT symbolic-ref HEAD 2>/dev/null) || return
 echo "${ref#refs/heads/}"
}

unpushed () {
  $GIT cherry -v @{upstream} 2>/dev/null | wc -l
}

need_push () {
  COUNT=${$(unpushed)// /}
  if [[ $COUNT -gt 0 ]]
  then
    echo "%{$fg_bold[magenta]%}+$COUNT%{$reset_color%}"
  fi
}

rvm_prompt(){
  if $(which rvm &> /dev/null && [[ `rvm current` != system ]])
  then
    echo "%{$fg_bold[yellow]%}$(rvm current)%{$reset_color%}"
  else
    echo ""
  fi
}

# This keeps the number of todos always available the right hand side of my
# command line. I filter it to only count those tagged as "+next", so it's more
# of a motivation to clear out the list.
todo(){
  if $(which todo.sh &> /dev/null)
  then
    num=$(echo $(todo.sh ls +next | wc -l))
    let todos=num-2
    if [ $todos != 0 ]
    then
      echo "$todos"
    else
      echo ""
    fi
  else
    echo ""
  fi
}

directory_name(){
  echo "%{$fg_bold[cyan]%}%1/%{$reset_color%}"
}

user_name(){
  if [[ $USER == 'root' ]]
  then
    COLOR="red"
  else
    COLOR="yellow"
  fi
  echo "%{$fg[$COLOR]%}$USER%{$reset_color%}"
}

host_name(){
  echo "%{$fg[magenta]%}$HOST%{$reset_color%}"
}

export PROMPT=$'$(directory_name) $(git_info)\$ '
set_prompt () {
  export RPROMPT=$'$(user_name)@$(host_name)'
}

precmd() {
  title "zsh" "%m" "%55<...<%~"
  set_prompt
}

