function get_pwd() {
  echo "${PWD/$HOME/~}"
}

function trim() {
    local var="$*"
    # remove leading whitespace characters
    var="${var#"${var%%[![:tab:]]*}"}"
    # remove trailing whitespace characters
    var="${var%"${var##*[![:tab:]]}"}"
    echo -n "$var"
}

local ret_status="%(?:%{$fg_bold[green]%}:%{$fg_bold[red]%}➜ )"
#PROMPT='${ret_status} %{$fg[cyan]%}%c%{$reset_color%} $(git_prompt_info)'
PROMPT='$fg[cyan] $(get_pwd) $(git_prompt_info)$ $reset_color'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}git:(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}✗"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"
