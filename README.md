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

# Share a password (self-destructs after 1 view, expires in 1 hour)
vaulted "super-secret-password" --views 1 --expires 1h

# Share environment variables
cat .env.production | vaulted --views 1
vaulted --file .env.local --expires 24h

# Share an API key with passphrase protection
vaulted "sk_live_abc123" -p mypassphrase -v 1 -e 1h

# Pipe from stdin
echo "db_password=hunter2" | vaulted

# Retrieve a secret
vaulted get https://vaulted.fyi/s/abc123#key
vaulted get https://vaulted.fyi/s/abc123#wrapped.salt -p mypassphrase

# Copy to clipboard
vaulted "secret" | pbcopy     # macOS
vaulted "secret" | xclip      # Linux
```

## Options

| Flag | Short | Default | Values |
|------|-------|---------|--------|
| `--views` | `-v` | 0 (unlimited) | 0, 1, 3, 5, 10 |
| `--expires` | `-e` | 24h | 1h, 24h, 7d, 30d |
| `--passphrase` | `-p` | none | any string |
| `--file` | `-f` | none | file path |
| `--host` | | vaulted.fyi | URL |

## More

- [Website](https://www.vaulted.fyi)
- [npm package](https://www.npmjs.com/package/vaulted-cli)
- [CLI documentation](https://www.vaulted.fyi/cli)
