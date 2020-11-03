#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
bash $DIR/test-backend.sh
bash $DIR/test-frontend.sh
bash $DIR/test-static.sh
bash $DIR/test-performance.sh
