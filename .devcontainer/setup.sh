#!/usr/bin/env bash
set -e

echo ">>> Installing Flutter..."
git clone https://github.com/flutter/flutter.git -b stable /usr/local/flutter
echo 'export PATH="/usr/local/flutter/bin:$PATH"' >> /etc/bash.bashrc
export PATH="/usr/local/flutter/bin:$PATH"

echo ">>> Flutter doctor..."
flutter doctor -v

echo ">>> Enabling web..."
flutter config --enable-web

echo ">>> Installing Chrome..."
apt-get update
apt-get install -y chromium-browser

echo ">>> Setting CHROME_EXECUTABLE..."
echo 'export CHROME_EXECUTABLE=/usr/bin/chromium-browser' >> /etc/bash.bashrc
export CHROME_EXECUTABLE=/usr/bin/chromium-browser

echo ">>> flutter pub get..."
flutter pub get

echo ">>> Setup complete."
