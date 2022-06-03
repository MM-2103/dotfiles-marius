# Add precmd hook
add-zsh-hook precmd update_prompt

PROMPT_SYMBOL='💀'

# Update PROMPT and RPROMPT
function update_prompt() {
    # Custom prompt with timestamp and git branch name
    export PROMPT=$'%F{009}┌──[%B%F{014}%(6~.%-1~/…/%4~.%5~)%b%F{009}]-%(#.$PROMPT_SYMBOL.$PROMPT_SYMBOL)-%F{013}%*$(git_prompt_info)$(node_prompt)%B%F{009}%b%F{009}\n└─%B%(#.%F{009}#.%F{009}$)%b%F{009} '
    export RPROMPT=''

    zle && zle reset-prompt
}

# Add update_prompt function to precmd function list
precmd_functions+=update_prompt
