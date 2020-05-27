#!/bin/bash

# Clean current tree
git clean -f && git checkout *

# Pull latest changes
git pull
