# Disable greeting
set fish_greeting

# Add homebrew (Linux) to path if it exists
if test -d ~/.linuxbrew
    fish_add_path ~/.linuxbrew/bin
end

if status is-interactive
    # Commands to run in interactive sessions can go here
    starship init fish | source
    pyenv init - | source
end

bind \cc 'commandline -f cancel-commandline; echo; commandline -f repaint "";'
