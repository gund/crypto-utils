#!/usr/bin/env bash

KEY_NAME=$1
PRIVATE_NAME="${KEY_NAME}.key"
PUBLIC_NAME="${KEY_NAME}.key.pub"

echo "Generating private key $PRIVATE_NAME..."
openssl genrsa -aes128 -out "$PRIVATE_NAME" 4096 && echo "OK!"

echo "Now generating public key $PUBLIC_NAME..."
openssl rsa -in "$PRIVATE_NAME" -pubout -out "$PUBLIC_NAME" && echo "OK!"

echo "Generated keypair $PRIVATE_NAME and $PUBLIC_NAME"
