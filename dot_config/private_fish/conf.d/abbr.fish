
# Load autojump
# TODO: find path
source /usr/local/share/autojump/autojump.fish
# source /home/daniel/.linuxbrew/share/autojump/autojump.fish

# Find a folder and open with vscode
function p
    set choice $(find . -maxdepth 2 \( -type d -name .git -prune \) -o -type d -print| sort | fzf)

    # Use the choice if not canceled by the user
    if test -n "$choice"
        code $choice
    end
end

# Load secret environment variables if they exist
if test -f ~/.secrets
    source $HOME/.secrets
end
