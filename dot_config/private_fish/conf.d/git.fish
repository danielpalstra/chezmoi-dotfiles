
# Use lab to browse repo
abbr --add gbrowse lab repo browse

# Force push the last commit
abbr --add fpush "git add .; git commit --amend --no-edit; git push --force"

# Shows the current MR
abbr --add mrview 'glab mr view'

# Clean up merged branches
abbr --add git-clean 'git branch --merged | egrep -v "(^\*|master|main|dev)" | xargs git branch -d'

# Fetch latest commits to main
abbr --add fetch-main 'git fetch origin main:main'
