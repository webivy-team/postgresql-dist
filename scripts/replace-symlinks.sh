#!/usr/bin/env bash
set -e

find . -type l -exec ./scripts/replace-symlinks-exec.sh {} +