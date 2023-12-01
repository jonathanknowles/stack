#!/usr/bin/env bash

set -euxo pipefail

stack build --resolver lts-21.22 async
eval `stack config env --resolver lts-21.22`
ghc Main.hs
