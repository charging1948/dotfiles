# Chezmoi-managed Dotfiles

This repository contains my dotfiles, managed with [chezmoi](https://www.chezmoi.io/).

## Initial Setup

```bash
# Generate Key
age-keygen -o $HOME/key.txt
```

Which will print something like:
```bash
Public key: age1ql3z7hjy54pw3hyww5ayyfg7zqgvc7w3j2elw8zmrj2kg5sfn9aqmcac8p
```

Afterwards update the `identities` and `recipients`-section of the `chezmoi.toml` file.

```toml
encryption = "age"
[age]
    identities = ["/home/user/key.txt", "..."]
    recipients = ["age1ql3z7hjy54pw3hyww5ayyfg7zqgvc7w3j2elw8zmrj2kg5sfn9aqmcac8p", "..."]
```

## Usage

```bash
# Initialize
chezmoi init --apply
```
