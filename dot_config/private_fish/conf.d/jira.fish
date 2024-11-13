# Jira shortcuts

# List open jira issues assigned to me
abbr --add jopen jira issue list -q '"project = \"AMS\" AND assignee = currentUser() AND type = Story AND status NOT IN ("Done") AND sprint in openSprints()"'
