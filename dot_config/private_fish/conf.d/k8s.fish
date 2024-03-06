# Kubernetes shortcuts
abbr --add k -- kubectl
abbr --add kn kubectl ns

# Load kubectl krew plugins
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

# Istio shortcuts
abbr --add io istioctl

# Docker shortcuts
abbr --add dc docker compose
