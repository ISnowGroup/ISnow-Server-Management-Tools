_restart_nginx() {
    local cur prev words cword split
    _init_completion || return

    case $cword in
        1)
            COMPREPLY=("-h" "-l" "-k" "-r" "-s" "-e" "-d" "-i")
            ;;
    esac
}
complete -F _restart_nginx restart_nginx
