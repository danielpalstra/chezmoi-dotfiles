# Kubernetes
abbr --add k -- kubectl

# Load krew plugins
if test -d ~/.krew
    fish_add_path ~/.krew/bin
end

# Load all contexts from custom-contexts directory if it exists
if test -d $HOME/.kube/custom-contexts
    set contexts $(find $HOME/.kube/custom-contexts -type f | tr "\n" ":")

    # Strip the last colun and add to config and add globally with Ux
    set -Ux KUBECONFIG $(string trim --right --chars=: $contexts)
end

# Kubie shortcuts
function ku
    kubie $argv
end

function kc -d "Start a new shell for context supplied"
    kubie ctx $argv
end

# shortcuts
# Istio
abbr --add io istioctl

# kubectl
abbr --add kn kubectl ns
