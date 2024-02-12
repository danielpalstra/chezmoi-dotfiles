if not status is-interactive && test "$CI" != true
    exit
end

pyenv init - | source
