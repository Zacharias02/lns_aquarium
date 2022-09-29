## Run this script on your terminal to generate files. Ex. sh scripts/rebuild.sh

#!/bin/bash

echo "Starting project rebuilding"

flutter pub get
flutter pub run build_runner build --delete-conflicting-outputs

## Add your custom scripts here

# flutter format lib/

echo "Project rebuilding finished"