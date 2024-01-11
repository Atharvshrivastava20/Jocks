# Jocks
A bash script that tells you jokes and waits for you to get the punchline, and if you are wrong then it tells you the punchline
## Requirements

- Bash
- curl
- jq

## Installation

This script requires `jq` to parse JSON responses. If you don't have `jq` installed, you can install it using the package manager for your system:

### Debian-based Linux systems

Bash
```
sudo apt-get install jq
```
Red Hat-based Linux systems

```
sudo yum install jq
```
macOS (using Homebrew)
```
brew install jq
```

## Usage

To run the script, navigate to the directory where you saved the script and use the following commands:

```bash
chmod +x jock.sh
./jock.sh
