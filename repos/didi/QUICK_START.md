# Didi Quick Start Guide

Didi is an AI assistant for the DegenDuel codebase, enabling semantic code search and intelligent question answering across multiple repositories.

## Setup

```bash
# Clone the repository (if needed)
git clone https://github.com/BranchManager69/didi.git
cd didi

# Set up the environment
./didi.sh setup

# Build Didi's knowledge base (this may take a few minutes)
./didi.sh parallel-index
```

## Basic Usage

### Code Search

```bash
# Quick semantic search for code
./didi.sh get "websocket connection"

# Detailed code search with more context
./didi.sh details "user authentication"
```

### Ask Questions

```bash
# Ask questions about the codebase
./didi.sh ask "How does the websocket authentication work?"

# Start an interactive session
./didi.sh interactive
```

## HTTP API

Didi includes an HTTP API for accessing its capabilities from other servers:

```bash
# Start the API server (default port: 8000)
./didi.sh api

# Start on a custom port
./didi.sh api --port 3000
```

### API Endpoints

| Endpoint | Method | Description |
|----------|--------|-------------|
| `/health` | GET | Simple health check |
| `/api/search` | POST | Search code semantically |
| `/api/ask` | POST | Ask questions about the code |
| `/api/system/status` | GET | Get system status |

### Example Requests

#### Search Code

```bash
curl -X POST http://localhost:8000/api/search \
  -H "Content-Type: application/json" \
  -d '{
    "query": "websocket connection",
    "limit": 5,
    "detailed": false
  }'
```

#### Ask a Question

```bash
curl -X POST http://localhost:8000/api/ask \
  -H "Content-Type: application/json" \
  -d '{
    "question": "How does authentication work?",
    "include_sources": true
  }'
```

#### Check System Status

```bash
curl http://localhost:8000/api/system/status
```

## Repository Management

```bash
# List all repositories
./didi.sh list-repos

# Add a new repository
./didi.sh add-repo "MyProject" /path/to/repo

# Enable/disable a repository
./didi.sh enable-repo repo_key
./didi.sh disable-repo repo_key

# Update repositories and rebuild if needed
./didi.sh update
```

## System Commands

```bash
# Check system status
./didi.sh status

# Run in Docker container
./didi.sh docker

# Show help
./didi.sh help
```

For more details, see the full [Documentation](DOCUMENTATION.md).