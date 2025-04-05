# DegenDuel Keypairs Directory

This directory contains sensitive cryptographic keys and is **EXCLUDED FROM GIT**.

## Security Warnings

- **NEVER commit these files to any Git repository**
- **NEVER share these keys with anyone**
- **NEVER upload these keys to any online service**
- **ALWAYS keep backups in secure locations**

## Directory Structure

- `solana/` - Solana blockchain keypairs
  - `mainnet/` - Production keypairs (USE WITH EXTREME CAUTION)
  - `devnet/` - Development network keypairs
  - `testnet/` - Test network keypairs

- `eth/` - Ethereum blockchain keypairs
  - `mainnet/` - Production keypairs (USE WITH EXTREME CAUTION)
  - `testnet/` - Test network keypairs

- `misc/` - Other blockchain keypairs or credentials

## Usage Guidelines

1. Always verify network before using keypairs
2. Use descriptive filenames like `treasury-1-devnet.json`
3. Add notes in separate .txt files if needed
4. Maintain proper permissions (700) on all files

This directory is automatically synchronized with `/home/ubuntu/degenduel-gpu/private/keypairs/`
for persistence across Lambda Labs instance restarts.