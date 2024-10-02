docker run --rm -ti --name geth -p 8545:8545 ethereum/client-go:v1.14.8 \
  --miner.gaslimit 500000000 \
  --http --http.api personal,eth,net,web3,debug \
  --http.vhosts '*,localhost,host.docker.internal' --http.addr "0.0.0.0" \
  --allow-insecure-unlock --rpc.allow-unprotected-txs \
  --dev \
  --nodiscover --maxpeers 0 --mine \
  --networkid 1337
