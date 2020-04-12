if status --is-interactive

    set fish_greeting

#    echo "Setting up fish shell using theme: $BASE16_THEME"
    set BASE16_SHELL "$HOME/.config/base16-shell/"
    source "$BASE16_SHELL/profile_helper.fish"

    set BASE16_THEME "base16-atelier-dune"

    source ~/.cargo/env

    export TERMINFO=~/.terminfo

    cat ~/.tmux.start.conf > ~/.tmux.conf

    cat ~/Documents/src/base16-tmux/colors/$BASE16_THEME.conf >> ~/.tmux.conf

end

