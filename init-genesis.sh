#!/bin/bash

# 🜂 Genesis Initialisierungsskript für SkelettonDAO
# Verknüpft YAML-Manifest mit DNS-Einträgen und Chain-Konfiguration

MANIFEST="genesis.yaml"
DOMAIN="dao.genesis.xyz"

echo "🔍 Lade Manifest: $MANIFEST"
IFID=$(yq '.dao.ifid' $MANIFEST)
GENESIS_HASH=$(yq '.dao.genesis_hash' $MANIFEST)
RPC_ENDPOINT=$(yq '.chain.rpc_endpoint' $MANIFEST)

echo "🔗 DNS-Verifikation für $DOMAIN"
DNS_IFID=$(dig TXT $DOMAIN +short | grep "dao.ifid=" | cut -d= -f2 | tr -d '"')
DNS_GENESIS=$(dig TXT $DOMAIN +short | grep "dao.genesis=" | cut -d= -f2 | tr -d '"')

echo "📜 Manifest IFID: $IFID"
echo "📜 DNS IFID: $DNS_IFID"
echo "📜 Manifest Genesis: $GENESIS_HASH"
echo "📜 DNS Genesis: $DNS_GENESIS"

if [ "$IFID" != "$DNS_IFID" ]; then
  echo "❌ IFID stimmt nicht überein!"
  exit 1
fi

if [ "$GENESIS_HASH" != "$DNS_GENESIS" ]; then
  echo "❌ Genesis-Hash stimmt nicht überein!"
  exit 1
fi

echo "✅ DNS-Einträge verifiziert."

echo "🚀 Initialisiere Chain-Verbindung..."
curl -s "$RPC_ENDPOINT" > /dev/null
if [ $? -eq 0 ]; then
  echo "✅ RPC erreichbar: $RPC_ENDPOINT"
else
  echo "❌ RPC nicht erreichbar!"
  exit 1
fi

echo "🪬 Genesis-Ritual abgeschlossen. Driftpoint A verankert."
