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

function dumpsecret() {
     secret="$1"
     namespace="${2:-default}"
     kubectl get -n "$namespace" secret "$secret" -o go-template='{{range $k,$v := .data}}{{printf "%s: " $k}}{{if not $v}}{{$v}}{{else}}{{$v | base64decode}}{{end}}{{"\n"}}{{end}}'
}

alias cy='yq eval "." - --colors | less -R'

function az-resources() {
     namespace="${1:-default}"
     kubectl api-resources --api-group azure.microsoft.com -o name | paste -sd "," - | xargs kubectl get -n ${namespace}
}

alias all-az-resourcesv1='kubectl api-resources --api-group azure.microsoft.com -o name | paste -sd "," - | xargs kubectl get -A'

alias all-az-resources='kubectl api-resources -o name | grep azure.com | paste -sd "," - | xargs kubectl get -A'

alias aksdev=/home/xtian/dev/rp/bin/aksdev
alias aksbuilder=/home/xtian/dev/rp/hack/aksbuilder.sh
