
# Use FZF to select a folder to open in VSCode
function p --description 'Use FZF to select a folder to open in VSCode'
    # TODO: Get start folder from config
    set start_folder ~/work/ams-tools/cps2
    set choice $(find {$start_folder} -maxdepth 2 \( -type d -name .git -prune \) -o -type d -print| sort | fzf)

    # Use the choice if not canceled by the user
    if test -n "$choice"
        code $choice
    end
end

# Load autojump on Darwin
if test -f /usr/local/share/autojump/autojump.fish
    source /usr/local/share/autojump/autojump.fish
end

# Load autjump from Linux brew
if test -f /home/daniel/.linuxbrew/share/autojump/autojump.fish
    source /home/daniel/.linuxbrew/share/autojump/autojump.fish
end
