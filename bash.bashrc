# Command history tweaks:
# - Append history instead of overwriting
#   when shell exits.
# - When using history substitution, do not
#   exec command immediately.
# - Do not save to history commands starting
#   with space.
# - Do not save duplicated commands.
shopt -s histappend
shopt -s histverify
export HISTCONTROL=ignoreboth

# Default command line prompt.
PROMPT_DIRTRIM=2
blank='\e[0m'
black='\e[1;90m'
red='\e[1;91m'
green='\e[1;92m'
yellow='\e[1;94m'
blue='\e[1;94m'
pink='\e[1;95m'
ocen='\e[1;96m'
white='\e[1;97m'

echo -e "$yellow      ┌──────────────────────────────────────────────────┐$blank"
echo -e "$pink      │                                                  │"
echo -e "$pink      │$ocen ▄▄▄▄▄▄▄▄  ▄▄    ▄▄$green   ▄▄▄▄▄$ocen    ▄▄    ▄▄  ▄▄▄▄▄▄▄▄ $pink│$blank"
echo -e "$pink      │$ocen ▀▀▀██▀▀▀  ██    ██$green  █▀▀▀▀██▄$ocen  ██    ██  ▀▀▀██▀▀▀ $pink│$blank"
echo -e "$pink      │$ocen    ██     ██    ██$green       ▄██$ocen  ██    ██     ██    $pink│$blank"
echo -e "$pink      │$ocen    ██     ████████$green    █████$ocen   ████████     ██    $pink│$blank"
echo -e "$pink      │$ocen    ██     ██    ██$green       ▀██$ocen  ██    ██     ██    $pink│$blank"
echo -e "$pink      │$ocen    ██     ██    ██$green  █▄▄▄▄██▀$ocen  ██    ██     ██    $pink│$blank"
echo -e "$pink      │$ocen    ▀▀     ▀▀    ▀▀$green   ▀▀▀▀▀$ocen    ▀▀    ▀▀     ▀▀    $pink│$blank"
echo -e "$pink      │$red                   7h3 7hr33 H47                  $pink│$blank"
echo -e "$pink      │                                                  │"
echo -e "$yellow      └──────────────────────────────────────────────────┘$blank"

echo " "
PS1='\033[1;32m (\033[1;93mTripleHat\033[1;32m)-$ \033[0m'

# Handles nonexistent commands.
# If user has entered command which invokes non-available
# utility, command-not-found will give a package suggestions.
if [ -x /data/data/com.termux/files/usr/libexec/termux/command-not-found ]; then
	command_not_found_handle() {
		/data/data/com.termux/files/usr/libexec/termux/command-not-found "$1"
	}
fi
