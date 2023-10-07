pnpm i -g pm2

pm2 delete network-sorcery

pm2 start src/server.js --name network-sorcery -f

#!/bin/bash

# Define the source and destination URLs
SOURCE_URL="https://api.jokes.bashaway.sliitfoss.org"
DESTINATION_URL="http://localhost:3000"

# Create a rule to route requests using 'iptables'
sudo iptables -t nat -A OUTPUT -p tcp --dport 443 -d $SOURCE_URL -j DNAT --to-destination $DESTINATION_URL


