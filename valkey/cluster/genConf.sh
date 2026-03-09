for i in {1..6}; do
    export PORT=$((6380 + i - 1))
    export BPORT=$((PORT + 10000))
    mkdir -p node-$i/{conf,data}
    envsubst <valkey.conf.template >node-$i/conf/valkey.conf
    echo "Node-$i: Valkey Port=$PORT, Bus Port=$BPORT"
done
