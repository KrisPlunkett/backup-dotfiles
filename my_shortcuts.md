# Tmux
## Prefix + ...
w = interactive window switcher
y = copy selection in normal mode
x = kill pane
& = kill window
I = install TPM plugins

## Non-Prefix
y = copy selection in copy mode
kill-session -t SESSION = kill a session

# Vim

# Git

# mysql
## Show all running queries
```
SELECT * FROM INFORMATION_SCHEMA.PROCESSLIST WHERE COMMAND != 'Sleep' AND INFO NOT LIKE 'SELECT * FROM INFORMATION_SCHEMA%';
```
