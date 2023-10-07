#!/bin/bash

AZURITE_PATH="/path/to/azurite"

DATA_DIRECTORY="/path/to/azure/storage/emulator"


IP="127.0.0.1"
PORT="12000"

"${AZURITE_PATH}" -s -d "${DATA_DIRECTORY}" -l "${IP}:${PORT}"
