# bash_completion for riak
_riak()
{
    local cur prev
    _get_comp_words_by_ref cur prev

    case $prev in
        riak)
            COMPREPLY=( $( compgen -W "--init --use --list --show --buildable --clone --build --fetch --repos --config --configs --force --link --unlink --id --repo --url --tag" -- "$cur" ) )
            ;;

    esac
}
complete -F _riak riak

