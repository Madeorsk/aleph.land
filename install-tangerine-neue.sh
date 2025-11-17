#!/bin/sh

# Read Tangerine Neue version.
TANGERINE_NEUE_VERSION=$(cat tangerine-neue.version)

# Download Tangerine Neue current version tarball.
curl -Lo "tangerine-neue.tar.gz" "https://github.com/mattbirchler/Tangerine-Neue-for-Mastodon/archive/refs/tags/$TANGERINE_NEUE_VERSION.tar.gz"
# Extract Tangerine Neue files.
tar xvf "tangerine-neue.tar.gz" "Tangerine-Neue-for-Mastodon-$TANGERINE_NEUE_VERSION/mastodon/app/javascript/skins/vanilla/" "Tangerine-Neue-for-Mastodon-$TANGERINE_NEUE_VERSION/mastodon/app/javascript/styles/"

# Move the required files to the correct directory.
mv "Tangerine-Neue-for-Mastodon-$TANGERINE_NEUE_VERSION"/mastodon/app/javascript/skins/vanilla/* "app/javascript/skins/vanilla"
mv "Tangerine-Neue-for-Mastodon-$TANGERINE_NEUE_VERSION"/mastodon/app/javascript/styles/* "app/javascript/styles"

# Remove unused remaining Tangerine Neue files.
rm -rf "Tangerine-Neue-for-Mastodon-$TANGERINE_NEUE_VERSION"
rm tangerine-neue.tar.gz

