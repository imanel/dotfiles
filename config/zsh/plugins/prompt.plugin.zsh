function git_prompt_info() {
  local REF
  local STATUS
  local PROMPT_PREFIX="%F{green}("
  local PROMPT_SUFFIX="%F{green}) "
  local PROMPT_DIRTY="%F{red}*"
  STATUS=$(command git status --porcelain --ignore-submodules=dirty 2> /dev/null | tail -n1)
  REF=$(command git symbolic-ref HEAD 2> /dev/null) || REF=$(command git rev-parse --short HEAD 2> /dev/null) || return 0
  if [[ -n $STATUS ]]; then
    echo "${PROMPT_PREFIX}${REF#refs/heads/}${PROMPT_DIRTY}${PROMPT_SUFFIX}"
  else
    echo "${PROMPT_PREFIX}${REF#refs/heads/}${PROMPT_SUFFIX}"
  fi
}

setopt promptsubst # Enable prompt substitution for ZSH
PROMPT='%F{cyan}%~ $(git_prompt_info)%f$ '

