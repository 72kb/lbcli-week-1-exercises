#!/bin/bash
# 1. Generate an address to receive the reward
ADDR=$(bitcoin-cli -regtest -rpcwallet=builderswallet getnewaddress)

# 2. Mine 101 blocks to that address to make the reward spendable
bitcoin-cli -regtest -rpcwallet=builderswallet generatetoaddress 101 $ADDR > /dev/null

# 3. Now check the balance (it should be 50.0)
bitcoin-cli -regtest -rpcwallet=builderswallet getbalance