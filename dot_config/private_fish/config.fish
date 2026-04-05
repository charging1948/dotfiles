# SSH functions for local servers
function birdstrike-vm
    sshpass -f ~/.ssh/local_servers_password ssh -A birdstrike-vm $argv
end

function birdstrike-ai
    sshpass -f ~/.ssh/local_servers_password ssh -A birdstrike-ai $argv
end

set -gx PATH $PATH /home/jk/.local/bin

if type -q cargo
    set -gx PATH "$HOME/.cargo/bin" $PATH
end

if type -q yarn
    set -gx PATH "$HOME/.yarn/bin" $PATH
end

status is-interactive; and begin

    # Abbreviations
    abbr --add -- lg lazygit

    # Aliases
    alias cd z
    alias cdi zi

    alias j just

    set fish_greeting # Disable greeting

    zoxide init fish | source

    if type -q direnv
        direnv hook fish | source
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


# pnpm
set -gx PNPM_HOME "/home/jk/.local/share/pnpm"
if not string match -q -- $PNPM_HOME $PATH
  set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end
