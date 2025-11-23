# SSH Key Generator

This is a small script to generate SSH keys following [GitHub's docs](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent).

## Usage

```bash
chmod +x generate-ssh.sh
./generate-ssh.sh
```

The script will prompt for your email and generate an Ed25519 SSH key at `~/.ssh/id_ed25519`.

**Note**: The script will exit if a key already exists at that location to prevent accidental overwrites.

## Add to Platform

After generation, copy your public key to add it to GitHub, GitLab, or other platforms:

```bash
pbcopy < ~/.ssh/id_ed25519.pub
```