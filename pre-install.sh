#!/bin/bash

echo "Create directories"
mkdir -p app
mkdir -p logs/nginx

echo "Copy .env file for nginx"
cp .env.example .env