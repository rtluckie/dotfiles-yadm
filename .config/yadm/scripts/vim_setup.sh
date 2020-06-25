#!/usr/bin/env bash
set -euo pipefail

echo '\n' | vim +PlugUpgrade +PlugClean! +PlugUpdate +qa --not-a-term
