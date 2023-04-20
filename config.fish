set -U fish_user_paths /opt/homebrew/bin $fish_user_paths
# source ~/.functions #this has to be in fish format (currently bash)
eval "$(direnv hook fish)" #might need direnv allow inside home folder

alias code='open -a "Visual Studio Code"'

function brew
    set -l filtered_path (echo $PATH | tr ':' '\n' | grep -v -e (pyenv root)/shims | paste -sd ":" -)
    env PATH=$filtered_path brew $argv
end


function fish_prompt
    set_color yellow
    echo (prompt_pwd)
    set_color white
    # echo ' $ '
    set_color normal
end

set -U fish_user_paths /opt/homebrew/anaconda3/bin $fish_user_paths
set -Ux PATH /Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin $PATH
set -Ux PATH /opt/homebrew/bin $PATH
set -Ux PATH $HOME/.local/bin $PATH
set -Ux PATH /opt/homebrew/Cellar/openjdk/19.0.2 $PATH
set -Ux PATH $HOME/.pyenv/shims $PATH

set -Ux JAVA_HOME /opt/homebrew/Cellar/openjdk/19.0.2
set -Ux GROBID_HOME /Users/markus/Projects/grobid/grobid-home
set -Ux PYENV_ROOT $HOME/.pyenv
set -Ux PATH $PYENV_ROOT/bin $PATH

if command -v pyenv 1>/dev/null 2>&1
  pyenv init --path | source
end

#for warp terminal
