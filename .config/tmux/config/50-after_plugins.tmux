bind-key -r C-h select-window -t :-
bind-key -r C-l select-window -t :+

bind C-c new-session                                              # create session
bind C-f command-prompt -p find-session 'switch-client -t %%'     # find session
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