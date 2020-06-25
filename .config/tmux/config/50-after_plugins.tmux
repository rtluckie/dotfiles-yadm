# shell
# set -g default-command /usr/local/bin/zsh
# set -g default-shell /usr/local/bin/zsh

# screen mode
set -g default-terminal "screen-256color"

# start with window 1 (instead of 0)
set -g base-index 1

# renumber windows after closing
set -g renumber-windows on

# start with pane 1
set -g pane-base-index 1

# remove esc delay
set -sg escape-time 0

# history
set -g history-limit 10000

# allow terminal scrolling
set-option -g terminal-overrides 'xterm*:smcup@:rmcup@'

# use vi mode
setw -g mode-keys vi
set -g status-keys vi

# pleb mode
set -g mouse on

# panes
set -g pane-border-style "fg=colour0"
set -g pane-active-border-style "fg=colour0"
#set -g window-active-style 'bg=colour236'
#set -g window-style 'bg=black'

# status line
set -g status-justify left
set -g status-style "bg=colour0,fg=colour14"
set -g status-interval 2

# messaging
set -g message-style "bg=colour14,fg=colour0"
set -g message-command-style "bg=colour1,fg=colour14"

# window mode
setw -g mode-style "bg=colour14,fg=colour0"

# split sytle
set -g pane-border-style "bg=colour0,fg=colour0"
set -g pane-active-border-style "bg=colour0,fg=colour0"

#resizing
setw -g aggressive-resize on

# loud or quiet?
set-option -g visual-activity on
set-option -g visual-bell off
set-option -g visual-silence off
set-window-option -g monitor-activity off
set-option -g bell-action none

# tmux clock
set -g clock-mode-colour colour14

# change prefix to ^z
unbind C-b
set-option -g prefix C-z
bind C-z send-prefix

# vim style copy paste mode
unbind [
bind Escape copy-mode
unbind p
bind p paste-buffer
bind-key -Tcopy-mode-vi 'v' send -X begin-selection
bind-key -Tcopy-mode-vi 'y' send -X copy-pipe-and-cancel 'xclip -in -selection clipboard'

# splitting
unbind %
bind h split-window -v
bind v split-window -h

# zoom split
unbind z
bind z if-shell "$is_vim" "send-keys ,z" "resize-pane -Z"
bind Z resize-pane -Z

# vim style commands
bind : command-prompt

# source config file
bind r source-file ${XDG_CONFIG_HOME}/tmux/tmux.conf \; display-message "█▓░ ~/.config/tmux/tmux.conf reloaded."

# other random key-binding changes
bind x kill-pane
bind t set status
bind a set-window-option synchronize-panes \; display-message "█▓░ synchronize"

# =================


bind-key -r C-h select-window -t :-
bind-key -r C-l select-window -t :+

bind C-c new-session                                              # create session
bind C-f command-prompt -p find-session 'switch-client -t %%'     # find session

# splitting
unbind %
unbind '"'
bind - split-window -v                                            # split current window horizontally
bind _ split-window -h                                            # split current window vertically
bind-key C-a last-pane                                            # switch to last pane

# pane navigation
bind -r h select-pane -L                                          # move left
bind -r j select-pane -D                                          # move down
bind -r k select-pane -U                                          # move up
bind -r l select-pane -R                                          # move right
bind > swap-pane -D                                               # swap current pane with the next one
bind < swap-pane -U                                               # swap current pane with the previous one

bind + run 'cut -c3- ~/.tmux.conf | sh -s _maximize_pane "#{session_name}" #D'   # maximize current pane

# vim-like pane resizing
bind -r H resize-pane -L 5
bind -r J resize-pane -D 5
bind -r K resize-pane -U 5
bind -r L resize-pane -R 5

# window navigation
unbind n
unbind p
bind -r C-h previous-window                                       # select previous window
bind -r C-l next-window                                           # select next window
bind Tab last-window                                              # move to last active window

# mouse
set-option -g mouse on                                            # enable mouse
bind m run "cut -c3- ~/.tmux.conf | sh -s _toggle_mouse"          # toggle mouse

# Make switching to cmd mode in zsh quick!
set -s escape-time 0

# window & pane creation
tmux_conf_new_window_retain_current_path=true
tmux_conf_new_pane_retain_current_path=true