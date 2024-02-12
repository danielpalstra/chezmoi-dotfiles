
if test -d ~/.binenv
    fish_add_path ~/.binenv
    binenv completion fish | source  
end
