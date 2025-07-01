# SSH functions for local servers
function birdstrike-vm
    sshpass -f ~/.ssh/local_servers_password ssh -A birdstrike-vm $argv
end

function birdstrike-ai
    sshpass -f ~/.ssh/local_servers_password ssh -A birdstrike-ai $argv
end

status is-interactive; and begin

    # Abbreviations
    abbr --add -- lg lazygit

    # Aliases
    alias cd z
    alias cdi zi
    alias wp-switch 'swww img $(fd --extension "gif" --follow . ~/Pictures/Wallpapers/ | fzf --preview='\''preview_gif {}'\'')'

    # Short aliases
    alias s1='birdstrike-vm'
    alias s2='birdstrike-ai'

    set fish_greeting # Disable greeting

    zoxide init fish | source

    direnv hook fish | source

    atuin init fish | source

    function starship_transient_prompt_func
        starship module character
    end
    starship init fish | source
    enable_transience

end
