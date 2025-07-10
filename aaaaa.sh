#!/bin/bash
echo "OK mulai"
if [[ "$VERSION" != "$NEW_VERSION" ]]; then
  python3 gofile.py "$LATEST_LINK" "$RC_FOLDER/$RC_FOLDER" "$DD_FOLDER:Archive/FC2/1.Mirror" "$RC_FOLDER/$RC_FOLDER.conf"
  echo "HAS_UPDATE=yes" >> $GITHUB_OUTPUT
else
  echo "HAS_UPDATE=no" >> $GITHUB_OUTPUT
fi