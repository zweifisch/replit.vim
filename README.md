
# REPL in tmux

## About

replit allows you to send lines of code from vim to another tmux pane, usually
a repl environment in the same tmux window.

for more flexibility try tslime.vim

![screenshot](https://github.com/zweifisch/replit.vim/raw/master/screenshot.png)

## How to use

1. start vim
2. split window in tmux
3. start repl session in new window
4. go back to vim

### Keymaps

* press `<enter>` to send visually selected code
* press `<enter>` in normal mode will send the current line
* press `<leader><enter>` to send the whole buffer


