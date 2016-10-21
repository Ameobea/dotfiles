# Bash aliases
alias al="nano ~/.aliases.bash"
alias rbp="source ~/.bash_profile"
alias ral="source ~/.aliases.bash"
alias bp="nano ~/.bash_profile"
alias ..="cd .."
alias l="exa"
alias la="l -a"
alias ll="exa -l"
alias path="echo $PATH | tr : '\n'"
alias 2dotfiles="cd ~/dotfiles"

# Rust
alias cb="cargo build"
alias cr="cargo run"
alias cdoc="cargo rustdoc --open -- --no-defaults --passes collapse-docs --passes unindent-comments --passes strip-priv-imports"
alias nightlies="curl -sSf https://static.rust-lang.org/rustup.sh | sh -s -- --channel=nightly"

# ASM
asmcompfunc() {
  nasm -f elf -F dwarf -g $1.asm
  ld -m elf_i386 -o $1 $1.o
}
alias asmcomp=asmcompfunc

# Misc
alias ogv2mp4="avconv -i out.ogv -c:v libx264 -preset veryslow -qp 0 -vf scale=\"1280:trunc(ow/a/2)*2\" -c:a libmp3lame -qscale:a 3 -ac 2 out.mp4"
alias frkb="sudo dpkg-reconfigure keyboard-configuration"
perfukfunc() {
  perf stat -e instructions:u,instructions:k $1
}
alias perfuk=perfukfunc

# Osu
osufunc() {
env WINEDEBUG=-all WINEPREFIX='/home/casey/Wine Prefixes/osu!' wine '/home/casey/Wine Prefixes/osu!/drive_c/users/casey/Local Settings/Application Data/osu!/osu!.exe'
}
alias osu=osufunc
alias 2osu="cd /home/casey/Wine\ Prefixes/osu\!/drive_c/users/casey/Local\ Settings/Application\ Data/osu\!/Songs/"

function mkcd {
  mkdir $1
  cd $1
}

function op {
  open http://$1
}
function swap {
  local TMPFILE=tmp.$$
  mv "$1" $TMPFILE
  mv "$2" "$1"
  mv $TMPFILE "$2"
}

# Misspellings aliases
alias cd..="cd .."

# npm
alias fixnpm="rm -r node_modules && npm install"
function ne { # bundle exec for node
  ./node_modules/.bin/$1 "${@:2}"
}

# gpg
gpg() {
  if [[ $@ == "--list-private-keys" ]]; then
    command gpg --list-secret-keys
  else
    command gpg "$@"
  fi
}
