#!/bin/bash
HOST="127.0.0.1"
PORT="6000"

exec 3<>/dev/tcp/${HOST}/${PORT}

# Send the HTTP GET request
echo -e "{"command": "modem_power_on"}" >&3

# Read and print the server's response
cat <&3

# Close the file descriptor
exec 3>&-
