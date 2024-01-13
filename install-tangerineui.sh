#!/bin/sh

# Read TangerineUI version.
TANGERINEUI_VERSION=$(cat tangerineui.version)

# Download TangerineUI current version tarball.
curl -Lo "tangerineui.tar.gz" "https://github.com/nileane/TangerineUI-for-Mastodon/archive/refs/tags/v$TANGERINEUI_VERSION.tar.gz"
# Extract TangerineUI files.
tar xvf "tangerineui.tar.gz" "TangerineUI-for-Mastodon-$TANGERINEUI_VERSION/mastodon/app/javascript/skins/vanilla/" "TangerineUI-for-Mastodon-$TANGERINEUI_VERSION/mastodon/app/javascript/styles/"

# Move the required files to the correct directory.
mv "TangerineUI-for-Mastodon-$TANGERINEUI_VERSION"/mastodon/app/javascript/skins/vanilla/* "app/javascript/skins/vanilla"
mv "TangerineUI-for-Mastodon-$TANGERINEUI_VERSION"/mastodon/app/javascript/styles/* "app/javascript/styles"

# Remove unused remaining TangerineUI files.
rm -rf "TangerineUI-for-Mastodon-$TANGERINEUI_VERSION"
rm tangerineui.tar.gz
