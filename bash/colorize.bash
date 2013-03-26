colorize() {
  declare -A colors
  declare color_string

  colors=(
    [none]=0
    [bold]=1
    [under]=4
    [fg_blk]=30
    [fg_red]=31
    [fg_grn]=32
    [fg_ylw]=33
    [fg_blu]=34
    [fg_mag]=35
    [fg_cyn]=36
    [fg_wht]=37
    [bg_blk]=40
    [bg_red]=41
    [bg_grn]=42
    [bg_ylw]=43
    [bg_blu]=44
    [bg_mag]=45
    [bg_cyn]=46
    [bg_wht]=47
  )

  for key in $1
  do
    color_string="$color_string;${colors[$key]}"
  done

  echo -n "\[\e[${color_string#;}m\]${2}\[\e[0m\]"
}
