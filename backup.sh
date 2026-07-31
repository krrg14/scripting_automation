#!/bin/bash

set -e

SOURCE_DIR="/scripts/project"
BACK_UP="/scripts/backup"

mkdir -p "$BACK_UP"
echo "backup starting..."

tar -czf "$BACK_UP/project_backup.tar.gz" "$SOURCE_DIR"

echo "backup successfully completed"
