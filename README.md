# Homebrew Tap for Vaulted

Official [Homebrew](https://brew.sh) tap for [Vaulted](https://www.vaulted.fyi) — zero-knowledge encrypted secret sharing from the command line.

## Install

```bash
brew tap vaulted-fyi/tap
brew install vaulted
```

## Usage

```bash
# Create an encrypted secret link
vaulted "my-api-key"

# With options
vaulted "secret" --views 1 --expires 1h

# Pipe from stdin
echo "db_password=hunter2" | vaulted

# Read from file
vaulted --file .env

# Retrieve a secret
vaulted get https://vaulted.fyi/s/abc123#key
```

## More

- [Website](https://www.vaulted.fyi)
- [npm package](https://www.npmjs.com/package/vaulted-cli)
- [CLI documentation](https://www.vaulted.fyi/cli)
