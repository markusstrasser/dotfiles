# Universal Variables
set -U fish_user_paths /opt/homebrew/bin /usr/local/bin $fish_user_paths
set -U EDITOR "code"
set -U fish_color_scheme default

# Environment Variables
set -Ux PATH /opt/homebrew/anaconda3/bin /Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin /opt/homebrew/bin $HOME/.local/bin /opt/homebrew/Cellar/openjdk/19.0.2 $HOME/.pyenv/shims $PATH
set -Ux JAVA_HOME /opt/homebrew/Cellar/openjdk/19.0.2
set -Ux GROBID_HOME /Users/markus/Projects/grobid/grobid-home
set -Ux PYENV_ROOT $HOME/.pyenv
set -Ux PATH $PYENV_ROOT/bin $PATH

# Functions
function brew
    set -l filtered_path (echo $PATH | tr ':' '\n' | grep -v -e (pyenv root)/shims | paste -sd ":" -)
    env PATH=$filtered_path brew $argv
end

function fish_prompt
    set_color yellow
    echo (prompt_pwd)
    set_color white
    set_color normal
end

# Aliases
alias code='open -a "Visual Studio Code"'
alias ls="exa -G --icons"
alias ll="ls -lh"
alias la="ls -lah"
alias grep="rg"

# # Key bindings
# bind \e\[A history-substring-search-up
# bind \e\[B history-substring-search-down

# Enable fzf keybindings
#fzf_configure_bindings --shell=fish --prefix=\e\[B=
# fzf_configure_bindings --shell=fish


# Agnoster Theme Settings
set -g theme_display_git yes
set -g theme_display_vagrant no
set -g theme_display_docker_machine no
set -g theme_display_k8s_context no
set -g theme_display_hg no
set -g theme_display_virtualenv yes
set -g theme_display_vi_mode yes

# Color Settings
set -g fish_color_autosuggestion 969896
set -g fish_color_command 8abeb7
set -g fish_color_param 3e999f
set -g fish_color_comment yellow
set -g fish_color_error red
set -g fish_color_selection white --background=black
set -g fish_color_search_match 'bryellow'

# Direnv hook
eval "$(direnv hook fish)"

# Pyenv initialization
if command -v pyenv 1>/dev/null 2>&1
    pyenv init --path | source
end
