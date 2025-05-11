status is-interactive; and begin

    # Abbreviations
    abbr --add -- lg lazygit

    # Aliases
    alias cd z
    alias cdi zi
    # alias wp-switch 'swww img $(fd --extension "gif" --follow . ~/Pictures/Wallpapers/ | fzf --preview='\''preview_gif {}'\'')'

    set fish_greeting # Disable greeting

    zoxide init fish | source

    direnv hook fish | source

end
