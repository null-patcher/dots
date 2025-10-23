if status is-interactive
    # Commands to run in interactive sessions can go here
end

set -g fish_key_bindings fish_vi_key_bindings
bind -M insert ctrl-c kill-whole-line repaint

fzf --fish | source
set -gx EDITOR nvim

alias lg="lazygit"

alias vpn="sudo openfortivpn -c ~/.config/emag-forti.conf --saml-login"

function fzf_cd_dir
    set -l dir (fd -t d . 2>/dev/null | fzf --height 40% --reverse --select-1 --exit-0)
    if test -n "$dir"
        cd "$dir"
        commandline -f repaint
    end
end

function fzf_vim_dir
    set -l dir (fd -t d . 2>/dev/null | fzf --height 40% --reverse --select-1 --exit-0)
    if test -n "$dir"
        cd "$dir"
        commandline -f repaint
        nvim
    end
end
# Bind Ctrl-f in both normal and insert modes
bind -M default \cf fzf_cd_dir
bind -M insert  \cf fzf_cd_dir

# Bind Ctrl-v in both normal and insert modes
bind -M default \cv fzf_vim_dir
bind -M insert  \cv fzf_vim_dir
fish_add_path $HOME/.local/bin
