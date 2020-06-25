#!/usr/bin/env bash
set -euo pipefail

vim +PlugUpgrade +PlugClean! +PlugUpdate +qa
