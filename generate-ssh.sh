#!/bin/bash
[[ -f ~/.ssh/id_ed25519 ]] && echo "SSH key already exists at ~/.ssh/id_ed25519. Aborting." && exit 1
read -p "Email: " email
ssh-keygen -t ed25519 -C "$email"
eval "$(ssh-agent -s)"
[[ "$OSTYPE" == "darwin"* ]] && ssh-add --apple-use-keychain ~/.ssh/id_ed25519 || ssh-add ~/.ssh/id_ed25519

