#!/usr/bin/env bash
set -euo pipefail

vim +PlugUpgrade +PlugClean! +PlugUpdate +qa --not-a-term > /dev/null 2>&1
