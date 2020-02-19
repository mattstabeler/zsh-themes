# Based on `geoffgarside` and `afowler` themes

# PROMPT="[%*] %n:%c $(git_prompt_info)%(!.#.$) "

if [ $UID -eq 0 ]; then CARETCOLOR="red"; else CARETCOLOR="blue"; fi

PROMPT='[%*] %{$fg[cyan]%}%n%{$reset_color%}:%{$fg[green]%}%3~%{$reset_color%}$(git_prompt_info) %{${fg_bold[$CARETCOLOR]}%}%(!.#.$)%{${reset_color}%} '

ZSH_THEME_GIT_PROMPT_PREFIX=" %{$fg[yellow]%}["
ZSH_THEME_GIT_PROMPT_SUFFIX="]%{$reset_color%}"

ZSH_THEME_GIT_PROMPT_DIRTY="*"
ZSH_THEME_GIT_PROMPT_CLEAN=""
ZSH_THEME_GIT_PROMPT_EQUAL_REMOTE="="

# geoffgarside theme
# PROMPT='[%*] %{$fg[cyan]%}%n%{$reset_color%}:%{$fg[green]%}%c%{$reset_color%}$(git_prompt_info) %(!.#.$) '
# ZSH_THEME_GIT_PROMPT_PREFIX=" %{$fg[yellow]%}git:("
# ZSH_THEME_GIT_PROMPT_SUFFIX=")%{$reset_color%}"



# afowler theme

# if [ $UID -eq 0 ]; then CARETCOLOR="red"; else CARETCOLOR="blue"; fi
# local return_code="%(?..%{$fg[red]%}%? ↵%{$reset_color%})"
# PROMPT='%m %{${fg_bold[blue]}%}:: %{$reset_color%}%{${fg[green]}%}%3~ $(git_prompt_info)%{${fg_bold[$CARETCOLOR]}%}»%{${reset_color}%} '
# RPS1="${return_code}"
# ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[yellow]%}‹"ZSH_THEME_GIT_PROMPT_SUFFIX="› %{$reset_color%}"