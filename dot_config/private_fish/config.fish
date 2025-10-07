# SSH functions for local servers
function birdstrike-vm
    sshpass -f ~/.ssh/local_servers_password ssh -A birdstrike-vm $argv
end

function birdstrike-ai
    sshpass -f ~/.ssh/local_servers_password ssh -A birdstrike-ai $argv
end

set -gx PATH $PATH /home/jk/.local/bin

status is-interactive; and begin

    # Abbreviations
    abbr --add -- lg lazygit

    # Aliases
    alias cd z
    alias cdi zi

    # Short aliases
    alias s1='birdstrike-vm'
    alias s2='birdstrike-ai'

    set fish_greeting # Disable greeting

    zoxide init fish | source

    if type -q direnv
        direnv hook fish | source
    else
        echo "Direnv not installed. Ignoring."
    end

    atuin init fish | source

    function starship_transient_prompt_func
        starship module character
    end
    starship init fish | source
    enable_transience

    set -g fish_key_bindings fish_vi_key_bindings

end

# Added by LM Studio CLI (lms)
set -gx PATH $PATH /home/jk/.lmstudio/bin
# End of LM Studio CLI section

