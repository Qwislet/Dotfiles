set fish_greeting ""

zoxide init --cmd cd fish | source

starship init fish | source

alias ll="eza -1 -l -a -g --icons --git"
alias llt="eza -1 -a --icons --tree --level=2 --git-ignore"
alias scf="source ~/.config/fish/config.fish"
alias la="ls -la"
alias update="brew update && brew upgrade && brew upgrade --cask && rustup update && nvim --headless '+Lazy! sync' +qa"
alias v="nvim"
alias nv="neovide --title-hidden"
alias vfsh="nvim ~/.config/fish/config.fish"
alias vstrshp="nvim ~/.config/starship.toml"
alias vwztrm="nvim ~/.wezterm.lua"
alias valacr="nvim ~/.config/alacritty/alacritty.toml"
alias py="python3"
alias sshadd="ssh-add ~/.ssh/id_rsa"
alias sshg="ssh -T git@github.com"
alias cl="clear"
alias clnvim="rm -rf ~/.local/share/nvim ~/.local/state/nvim ~/.cache/nvim"
alias rmf="rm -rf"
# alias yab='echo "$(whoami) ALL=(root) NOPASSWD: sha256:$(shasum -a 256 $(which yabai) | cut -d " " -f 1) $(which yabai) --load-sa" | sudo tee /private/etc/sudoers.d/yabai'
# alias yabupdate="yabai --stop-service && yabai --uninstall-service && brew upgrade yabai && yabai --start-service"
alias fish_usr_paths='echo $fish_user_paths | tr " " "\n" | nl'
alias zbr="zig build run"
alias zr="zig run"
alias td="turbo dev"
alias cr="cargo run"
alias crr="cargo run --release"
alias cb="cargo build"
alias ccl="cargo clippy -- -Wclippy::all -Wclippy::pedantic -Wclippy::cargo"
alias dr="dotnet run"
alias drr="dotnet run --configuration Release"
alias db="dotnet build"
alias cgd="gcp && cmake --preset debug && ln -sf ./build/Debug/compile_commands.json ./"
alias cgr="gcp && cmake --preset release && ln -sf ./build/Release/compile_commands.json ./"
alias cbd="cmake --build --preset debug --target all -j 10"
alias cbr="cmake --build --preset release --target all -j 10"

bind \cz toggle_nvim

alias cmrd="CMake_build_and_run_debug"
alias cmrr="CMake_build_and_run_release"

set -x PATH "$HOME/.local/bin" $PATH
set -g STARSHIP_CONFIG ~/.config/starship/starship.toml
set -x HISTFILE ~/.config/fish/fish_history
set -Ux MANPAGER "nvim +Man!"
