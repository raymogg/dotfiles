# Abbreviations
abbr -a gst "git status"
abbr -a gad "git add"
abbr -a gch "git checkout"
abbr -a gcm "git commit -m"
abbr -a gpo "git pull origin"

# Fish Stuff
set -g theme_display_docker_machine yes
set -g theme_display_virtualenv yes
set -g theme_display_user ssh
set -g theme_display_host ssh
set -g theme_display_git_master_branch yes
set -g theme_powerline_fonts yes
set -g theme_nerd_fonts no
set -g fish_prompt_pwd_dir_length 0
set -g theme_use_abbreviated_branch_names no
set -g theme_newline_cursor yes

# Aliases
alias config="/usr/bin/git --git-dir=$HOME/.dotfiles.git/ --work-tree=$HOME"

# Custom Greeting
function fish_greeting
	echo
	echo -e (uname -n | awk '{print " \\\\e[1mUser: \\\\e[0;32m"$0"\\\\e[0m"}')
	echo -ne (\
	    df -l -h | \
	    grep -E 'dev/disk1s1' |
	    awk '{print " \\\\e[1mDisk Usage:\\\\e[0m  "$4" Available\n  "$3"/"$2" Used\n  Capacity: "$5}'
	)
	echo
	echo
end
