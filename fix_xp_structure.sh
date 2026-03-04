#!/usr/bin/env bash

set -e

echo "Fixing XP feature folder structure..."

XP_BASE="lib/features/xp"

# Remove incorrect domain-like folders inside data
rm -rf "$XP_BASE/data/entities" || true
rm -rf "$XP_BASE/data/usecases" || true

# Ensure correct data structure
mkdir -p "$XP_BASE/data/models"
mkdir -p "$XP_BASE/data/repositories"

# Create proper domain structure
mkdir -p "$XP_BASE/domain/entities"
mkdir -p "$XP_BASE/domain/repositories"
mkdir -p "$XP_BASE/domain/usecases"

# Ensure presentation structure
mkdir -p "$XP_BASE/presentation/providers"
mkdir -p "$XP_BASE/presentation/widgets"

# Add .gitkeep to track empty directories
find "$XP_BASE" -type d -empty -exec touch {}/.gitkeep \;

echo "XP folder structure corrected successfully."
