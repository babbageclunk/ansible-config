alias e='emacsclient -n'
alias bastion='ec2-ssh -t ansible_role backend@bastion'

function workon() {
    source ~/venv/$1/bin/activate
}

alias vs='vagrant ssh'
alias vreqs='YPLAN_REQS=1 vagrant provision'
alias vprov='vagrant provision'
alias vup='vagrant up --provision'
