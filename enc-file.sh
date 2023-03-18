#!/usr/bin/env bash

FILE_NAME=$1
PUB_KEY=$2
OUT_FILE="${FILE_NAME}.enc"

echo "Encrypting file ${FILE_NAME} as ${OUT_FILE} using public key ${PUB_KEY}..."
openssl pkeyutl -encrypt -pubin -inkey "$PUB_KEY" -in "$FILE_NAME" -out "$OUT_FILE" && echo "OK!"
