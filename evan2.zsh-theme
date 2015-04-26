# Created by Evan Darwin
#   https://evandarw.in
#

# Copied from the fishy theme.
_evan2_collapsed_wd() {
  echo $(pwd | perl -pe "
   BEGIN {
      binmode STDIN,  ':encoding(UTF-8)';
      binmode STDOUT, ':encoding(UTF-8)';
   }; s|^$HOME|~|g; s|/([^/])[^/]*(?=/)|/\$1|g
")
} 

PROMPT='[%{$fg[white]%}%*%{$reset_color%}] %{$fg[green]%}%n%{$fg[white]%}:%{$fg[cyan]%}$(_evan2_collapsed_wd)%{$reset_color%}$(git_prompt_info) :: '
RPROMPT=" %{$fg[yellow]%}%m%{$reset_color%}"

# Git themes
ZSH_THEME_GIT_PROMPT_PREFIX=" %{$fg[white]%}[%{$fg[blue]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$fg[white]%}]%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN=""
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%}*%{$fg[blue]%}"
