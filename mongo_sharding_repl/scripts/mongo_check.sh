#!/bin/bash

echo;
echo \>\>\>check shard1-1;
docker compose exec -T shard1-1 mongosh --port 27018 <<EOF
use somedb;
db.helloDoc.countDocuments();
EOF

echo;
echo \>\>\>check shard1-2;
docker compose exec -T shard1-2 mongosh --port 27019 <<EOF
use somedb;
db.helloDoc.countDocuments();
EOF

echo;
echo \>\>\>check shard1-3;
docker compose exec -T shard1-3 mongosh --port 27020 <<EOF
use somedb;
db.helloDoc.countDocuments();
EOF

echo;
echo \>\>\>check shard2-1;
docker compose exec -T shard2-1 mongosh --port 27021 <<EOF
use somedb;
db.helloDoc.countDocuments();
EOF

echo;
echo \>\>\>check shard2-2;
docker compose exec -T shard2-2 mongosh --port 27022 <<EOF
use somedb;
db.helloDoc.countDocuments();
EOF

echo;
echo \>\>\>check shard2-3;
docker compose exec -T shard2-3 mongosh --port 27023 <<EOF
use somedb;
db.helloDoc.countDocuments();
EOF
