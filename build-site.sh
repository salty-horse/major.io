#!/bin/bash
set -eux -o pipefail

hugo version

# Build the blog
hugo

# Allow RSS to be accessed simply as /feed
cp -av public/feed/index.xml public/feed/index.html
