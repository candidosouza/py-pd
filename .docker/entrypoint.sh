#!/bin/bash

cp .env.example .env
pip install -r requirements.txt
tail -f /dev/null