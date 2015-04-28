# PROMPT='%{$fg_no_bold[green]%}%3~$(git_prompt_info)%{$reset_color%}$ '
PROMPT='%{$fg[cyan]%}%~ $(git_prompt_info)%{$reset_color%}$ '
RPROMPT='%{$FG[232]%}[%*]%{$reset_color%}'
PROMPT_EOL_MARK=''

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[green]%}("
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$fg[green]%}) "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%}*"
ZSH_THEME_GIT_PROMPT_CLEAN=""
