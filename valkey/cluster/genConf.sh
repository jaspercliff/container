for i in {1..6}; do
    export PORT=$((6380 + i - 1))
    export BPORT=$((PORT + 10000))
    mkdir -p {conf,data}/node-$i
    envsubst <valkey.conf.template >conf/node-$i/valkey.conf
    echo "Node-$i: Valkey Port=$PORT, Bus Port=$BPORT"
done
