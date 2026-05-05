#!/usr/bin/env bash
export CHROME_EXECUTABLE=/usr/bin/chromium-browser

cd /workspaces/cup

flutter run -d web-server --web-port=8080 --web-renderer=html
