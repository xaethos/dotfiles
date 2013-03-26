GIT="/usr/bin/git"

RST='\e[0m'

NONE=0
BOLD=1
UNLN=4

FG=3
BG=4

BLK=0
RED=1
GRN=2
YLW=3
BLU=4
MAG=5
CYN=6
WHT=7

colorize() {
  echo -n "\[\e[${1}m${2}${RST}\]"
}

git_info() {
  st=$($GIT status 2>/dev/null | tail -n 1)
  if [[ $st == "" ]]
  then
    echo ""
  else
    if [[ $st == "nothing to commit (working directory clean)" ]]
    then
      COLOR="$BOLD;$FG$GRN"
    else
      COLOR="$BOLD;$FG$RED"
    fi
    BRANCH_NAME=$(git_branch)
    BRANCH_INFO=$(colorize $COLOR "$BRANCH_NAME")
    echo "[$BRANCH_INFO$(need_push)]"
  fi
}

git_branch () {
  ref=$($GIT symbolic-ref HEAD 2>/dev/null) || return
  echo "${ref#refs/heads/}"
}

unpushed () {
  WC=$($GIT cherry -v @{upstream} 2>/dev/null | wc -l)
  echo -n ${WC// /}
}

need_push () {
  COUNT=$(unpushed)
  if [[ $COUNT -gt 0 ]]
  then
    colorize "$BOLD;$FG$MAG" "+$COUNT"
  fi
}

directory_name(){
  colorize "$BOLD;$FG$CYN" "$(basename "$PWD")"
}

user_name(){
  if [[ $USER == 'root' ]]
  then
    COLOR="$FG$RED"
  else
    COLOR="$FG$YLW"
  fi
  colorize $COLOR $USER
}

host_name(){
  colorize "$FG$MAG" $HOSTNAME
}

prompt_cmd() {
  export PS1="$(user_name)@$(host_name):$(directory_name) $(git_info)\$ "
}

export PROMPT_COMMAND=prompt_cmd

#export PS1='\[\e[0;36m\]yay=$ \[\e[0m\]'

