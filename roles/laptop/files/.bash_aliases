alias e='emacsclient -n'

function workon() {
    source ~/venv/$1/bin/activate
}

alias lxc=lxd.lxc
alias lxcl='lxd.lxc list | grep -v -e -------'

function lxbash() {
    lxd.lxc exec $1 bash
}

alias jst='watch --color juju status --color'

alias j1='~/1.25/juju'
