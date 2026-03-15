#!/usr/bin/env bash
set -e

source ~/.cargo/env 2>/dev/null || true
source .env 2>/dev/null || true

echo "Deploying to testnet..."

stellar keys generate deployer --network testnet 2>/dev/null || true

for contract in asset-registry engineer-registry lifecycle; do
    echo "Deploying $contract..."
    stellar contract deploy \
        --wasm target/wasm32-unknown-unknown/release/${contract//-/_}.wasm \
        --source deployer \
        --network testnet
done

echo "Deployment complete."
