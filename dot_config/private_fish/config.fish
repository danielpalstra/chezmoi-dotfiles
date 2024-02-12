#
# Main Fish shell configuration
# only the minimal is setup here. The fancy stuff happens 
# in the fish config.d directory
#

# Disable greeting
set fish_greeting

# Add homebrew (Linux) to path if it exists
if test -d ~/.linuxbrew
    fish_add_path ~/.linuxbrew/bin
end

if status is-interactive
    # Commands to run in interactive sessions can go here
    starship init fish | source
end
