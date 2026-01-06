function fish_prompt -d "Write out the prompt"
    # This shows up as USER@HOST /home/user/ >, with the directory colored
    # $USER and $hostname are set by fish, so you can just use them
    # instead of using `whoami` and `hostname`
    printf '%s@%s %s%s%s > ' $USER $hostname \
        (set_color $fish_color_cwd) (prompt_pwd) (set_color normal)
end

if status is-interactive # Commands to run in interactive sessions can go here

    # No greeting
    set fish_greeting

    # Use starship
    starship init fish | source
    if test -f ~/.local/state/quickshell/user/generated/terminal/sequences.txt
        cat ~/.local/state/quickshell/user/generated/terminal/sequences.txt
    end

    # Aliases
    alias pamcan pacman
    alias ls 'eza --icons'
    alias clear "printf '\033[2J\033[3J\033[1;1H'"
    alias kt 'killall -9 Telegram'
    alias cs 'cd'
    alias fixt 'exec fish'
    alias ref 'source ~/.config/fish/config.fish'
    alias rmf 'rm -rf $argv[1]'
    alias cd2 'cd .. && cd ..'
    alias cd3 'cd .. && cd .. && cd ..'
    alias nani nano
    alias update 'sudo pacman -Syu && yay -Syu'
    alias nm 'nvim'
    alias nv 'nvim'
    alias storage 'sudo ncdu /'


function binc
    brightnessctl set $argv[1]%+ >/dev/null 2>&1
    set current (brightnessctl get)
    set max (brightnessctl max)
    set percent (math --scale=0 "$current * 100 / $max")
    echo "Current Brightness at $percent%"
end

function bdec
    brightnessctl set $argv[1]%- >/dev/null 2>&1
    set current (brightnessctl get)
    set max (brightnessctl max)
    set percent (math --scale=0 "$current * 100 / $max")
    echo "Current Brightness at $percent%"
end

    function mkcd
	mkdir -p "$argv[1]"
    	cd "$argv[1]"
     end
end

