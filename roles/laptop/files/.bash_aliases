alias e='emacsclient -n'

function workon() {
    source ~/venv/$1/bin/activate
}

alias lxcl='lxc list | grep -v -e -------'

function lxbash() {
    lxc exec $1 bash
}
