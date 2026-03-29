#!/bin/sh
set -e

# Copy .env from .env.example if it doesn't exist
if [ ! -f .env ]; then
    cp .env.example .env
fi

echo "Installing PWA dependencies..."
pnpm install

echo "Starting PWA dev server..."
pnpm run dev --host 0.0.0.0
