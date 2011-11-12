_p()
{
    local cur prev opts
    COMPREPLY=()
    cur="${COMP_WORDS[COMP_CWORD]}"
    prev="${COMP_WORDS[COMP_CWORD-1]}"

    opts=`ls ~/projects`

    COMPREPLY=($(compgen -W "${opts}" -- ${cur}))
    return 0
}

complete -F _p p
complete -F _p vp