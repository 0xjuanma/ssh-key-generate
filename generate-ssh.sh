#!/bin/bash
read -p "Email: " email
ssh-keygen -t ed25519 -C "$email"
eval "$(ssh-agent -s)"
[[ "$OSTYPE" == "darwin"* ]] && ssh-add --apple-use-keychain ~/.ssh/id_ed25519 || ssh-add ~/.ssh/id_ed25519

