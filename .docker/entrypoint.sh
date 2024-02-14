#!/bin/bash

cp .env.example .env
pip install -r requirements.txt

# Define códigos de escape ANSI para as cores
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
BLUE='\033[0;34m'
NC='\033[0m'  # Sem cor

echo
echo
echo -e "${YELLOW}Container is ready!${NC}"
echo
echo

tail -f /dev/null