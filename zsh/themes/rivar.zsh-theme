# vim:ft=zsh ts=2 sw=2 sts=2

# Must use Powerline font, for \uE0A0 to render.
ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[magenta]%}\uE0A0"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%} \u2699"
ZSH_THEME_GIT_PROMPT_CLEAN="\u2714"

ZSH_THEME_GIT_PROMPT_ADDED="%{$fg[cyan]%} ✈"
ZSH_THEME_GIT_PROMPT_MODIFIED="%{$fg[yellow]%} ✭"
ZSH_THEME_GIT_PROMPT_DELETED="%{$fg[red]%} ✗"
ZSH_THEME_GIT_PROMPT_RENAMED="%{$fg[blue]%} ➦"
ZSH_THEME_GIT_PROMPT_UNMERGED="%{$fg[magenta]%} ✂"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[grey]%} ✱"

ZSH_THEME_RUBY_PROMPT_PREFIX="%{$fg_bold[red]%}‹"
ZSH_THEME_RUBY_PROMPT_SUFFIX="›%{$reset_color%}"

# # # # # #
user_hostname()  {
	echo "%F{013}%n%F{130}@%F{013}%m"
}

directory() {
	echo "%{$fg_bold[green]%}%~%{$reset_color%}"
}

docker_counter() {
	echo "%F{blue}\uf21f$(docker ps -q | wc -l)%{$reset_color%}"
}

clock_time() {
	echo "%F{003}%D{%H:%M:%S %z}%{$reset_color%}"
}

last_command_result() {
	echo "%(?.✔.%K{red}✘%{$reset_color%})" 
}

PROMPT='$(user_hostname) $(directory) $(git_prompt_info) $(docker_counter) $(clock_time)
$ '

RPROMPT='$(virtualenv_prompt_info)$(last_command_result)'

VIRTUAL_ENV_DISABLE_PROMPT=0
ZSH_THEME_VIRTUAL_ENV_PROMPT_PREFIX=" %{$fg[green]%}🐍 "
ZSH_THEME_VIRTUAL_ENV_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_VIRTUALENV_PREFIX=$ZSH_THEME_VIRTUAL_ENV_PROMPT_PREFIX
ZSH_THEME_VIRTUALENV_SUFFIX=$ZSH_THEME_VIRTUAL_ENV_PROMPT_SUFFIX

