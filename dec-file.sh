#!/usr/bin/env bash

FILE=$1
PRIV_KEY=$2
OUT_NAME="${FILE}.dec"

echo "Decrypting file ${FILE} to ${OUT_NAME} using private key ${PRIV_KEY}..."
openssl pkeyutl -decrypt -inkey "$PRIV_KEY" -in "$FILE" -out "$OUT_NAME" && echo "OK!"
