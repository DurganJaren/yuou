#!/bin/sh
if [ ! -f UUID ]; then
  UUID="0434cd4a-5aab-4f1c-a7be-db0f4be4e8b7"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

