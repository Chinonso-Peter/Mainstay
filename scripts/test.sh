#!/usr/bin/env bash
set -e

source ~/.cargo/env 2>/dev/null || true

echo "Running Mainstay tests..."
cargo test
echo "All tests passed."
