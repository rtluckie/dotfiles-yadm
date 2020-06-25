#!/usr/bin/env bash
set -euo pipefail

yes '\n' | vim +PlugUpgrade +PlugClean! +PlugUpdate +qa
