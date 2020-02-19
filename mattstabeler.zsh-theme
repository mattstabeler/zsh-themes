# Based on `geoffgarside` and `afowler` themes

# PROMPT="[%*] %n:%c $(git_prompt_info)%(!.#.$) "

if [ $UID -eq 0 ]; then CARETCOLOR="red"; else CARETCOLOR="blue"; fi


PROMPT='[%*] %{$fg[cyan]%}%n%{$reset_color%}:%{$fg[green]%}%3~%{$reset_color%}$(git_prompt_info_alt) %{${fg_bold[$CARETCOLOR]}%}%(!.#.$)%{${reset_color}%} '

ZSH_THEME_GIT_PROMPT_DIRTY=""
ZSH_THEME_GIT_PROMPT_CLEAN="="
ZSH_THEME_GIT_PROMPT_EQUAL_REMOTE="="
ZSH_THEME_GIT_PROMPT_AHEAD_REMOTE=">"
ZSH_THEME_GIT_PROMPT_BEHIND_REMOTE="<"

ZSH_THEME_GIT_PROMPT_UNTRACKED="^"
ZSH_THEME_GIT_PROMPT_ADDED="+"
ZSH_THEME_GIT_PROMPT_MODIFIED="*"
ZSH_THEME_GIT_PROMPT_DELETED="-"
# ZSH_THEME_GIT_PROMPT_STASHED=" stashed s"
# ZSH_THEME_GIT_PROMPT_UNMERGED=" unmerged"
# ZSH_THEME_GIT_PROMPT_AHEAD=" ahead"
# ZSH_THEME_GIT_PROMPT_BEHIND=" behind"
# ZSH_THEME_GIT_PROMPT_DIVERGED=" diverged"

ZSH_THEME_GIT_PROMPT_PREFIX=" %{$fg[yellow]%}["
ZSH_THEME_GIT_PROMPT_SUFFIX="]%{$reset_color%}"

function git_prompt_info_alt() {
  local ref
  if [[ "$(command git config --get oh-my-zsh.hide-status 2>/dev/null)" != "1" ]]; then
    ref=$(command git symbolic-ref HEAD 2> /dev/null) || \
    ref=$(command git rev-parse --short HEAD 2> /dev/null) || return 0
    echo "$ZSH_THEME_GIT_PROMPT_PREFIX${ref#refs/heads/}$(git_prompt_status)$(git_remote_status)$ZSH_THEME_GIT_PROMPT_SUFFIX"
  fi
}


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