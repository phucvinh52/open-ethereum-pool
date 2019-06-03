#!/bin/bash

if [ !-z "${OPEN_ETHEREUM_CONFIG}" ]; then
    echo "PLEASE SET ENV OPEN_ETHEREUM_CONFIG"
    sleep 1s
    exit 1
fi

cat > /config.json <<EOF
${OPEN_ETHEREUM_CONFIG}
EOF

cd /
exec /open-ethereum-pool /config.json