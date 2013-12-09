# bash_completion for riak-admin
_riak-admin()
{
    local cur prev
    _get_comp_words_by_ref cur prev

    case $prev in
        riak-admin)
            COMPREPLY=( $( compgen -W "cluster join leave backup restore test reip js-reload erl-reload wait-for-service ringready transfers force-remove down cluster-info member-status ring-status vnode-status aae-status diag status transfer-limit reformat-indexes top downgrade-objects security bucket-type ciphers" -- "$cur" ) )
            ;;
        cluster)
            CLUSTER_CMDS="join leave force-remove replace force-replace plan commit clear"
            COMPREPLY=( $( compgen -W "$CLUSTER_CMDS" -- "$cur") )
            ;;
        security)
            SECURITY_CMDS="add-user add-source grant revoke print-users print-sources print-user"
            COMPREPLY=( $( compgen -W "$SECURITY_CMDS" -- "$cur") )
            ;;
        bucket-type)
            BUCKET_TYPE_CMDS="status activate create update list"
            COMPREPLY=( $( compgen -W "$BUCKET_TYPE_CMDS" -- "$cur") )
            ;;
    esac
}
complete -F _riak-admin riak-admin


