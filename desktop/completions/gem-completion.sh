_gem_c()
{
    local cur prev opts
    COMPREPLY=()
    cur="${COMP_WORDS[COMP_CWORD]}"
    prev="${COMP_WORDS[COMP_CWORD-1]}"

    opts=`ls $GEM_HOME/gems`

    COMPREPLY=($(compgen -W "${opts}" -- ${cur}))
    return 0
}

complete -F _gem_c cdgem
complete -F _gem_c vgem
