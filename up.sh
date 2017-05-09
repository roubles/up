function up() {
    UP=$1

    if [[ $UP =~ ^[\-0-9]+$ ]]; then
        if ((UP<0)); then
            UP=${UP#-}
            UP=$((UP+1))
            cd $(echo $PWD | cut -d/ -f1-${UP})
        else
            cd $(printf "%0.s../" $(seq 1 ${UP}));
        fi
    fi
}
