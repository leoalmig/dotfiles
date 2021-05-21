parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# Set color_prompt somewhere else
if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\H\[\033[00m\]:\[\033[01;34m\]\W\[\033[00m\]$(parse_git_branch) $ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w \$ '
fi
