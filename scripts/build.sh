#!/usr/bin/env bash
set -e

source ~/.cargo/env 2>/dev/null || true

echo "Building Mainstay contracts..."
cargo build --target wasm32-unknown-unknown --release
echo "Build complete."
