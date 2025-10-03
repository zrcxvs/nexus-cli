#!/bin/sh

export NEXUS_HOME=/root/.nexus
mkdir -p $NEXUS_HOME

# Buat config.json berisi NODE_ID
echo "{\"node_id\": \"${NODE_ID}\"}" > $NEXUS_HOME/config.json

# Jalankan Nexus CLI dalam mode headless
exec $NEXUS_HOME/bin/nexus-cli start --headless --node-id $NODE_ID