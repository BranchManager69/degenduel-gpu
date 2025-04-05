# Didi: DegenDuel's AI Assistant

A powerful AI assistant that helps you navigate and understand the DegenDuel codebase.

![Didi Demo](https://i.ibb.co/f2smYQH/coderag-diagram.png)

## 📋 Overview

Didi transforms the DegenDuel codebase into a searchable knowledge base, enabling:

- 🔍 **Semantic Code Search**: Find relevant code based on meaning, not just keywords
- 📝 **Detailed Code Exploration**: Get full context and implementation details
- 🤖 **AI-Powered Insights**: Ask Didi complex questions about the DegenDuel codebase
- 🚀 **Simple Command Interface**: Easy-to-use shell commands for all functionality

## 🛠️ Installation

### Prerequisites

- Python 3.10+
- Git
- DegenDuel repository

### Setup

```bash
# Clone this repository
git clone https://github.com/degenduel/didi.git
cd didi

# Create virtual environment
python -m venv venv
source venv/bin/activate  # On Windows: venv\Scripts\activate

# Install dependencies
pip install -r requirements.txt

# Clone the DegenDuel repository if needed
git clone https://github.com/degenduel/degenduel-fe.git repo

# Build Didi's knowledge base
./didi.sh index
```

## 🚀 Usage

Didi provides a simple command-line interface for all functionality:

```bash
# Show available commands
./didi.sh help

# Check Didi's status
./didi.sh status

# Search code
./didi.sh search "websocket authentication"

# Detailed code view
./didi.sh details "contest system implementation"

# Ask Didi questions about the code
./didi.sh ask "How does the user authentication work?"

# Update repository and rebuild knowledge base
./didi.sh update
```

## 🔧 Configuration

Didi can be configured via environment variables or by editing `config.py`:

```bash
# Set custom paths via environment variables
export CODE_RAG_PATH="/path/to/didi"
export CODE_RAG_REPO_PATH="/path/to/degenduel-repo"
export CODE_RAG_DB_PATH="/path/to/database"

# Set custom model paths
export CODE_RAG_MODEL_PATH="codellama/CodeLlama-7b-instruct-hf"
export CODE_RAG_EMBED_MODEL="sentence-transformers/all-MiniLM-L6-v2"
```

## 💡 Examples

**Finding implementation details:**
```bash
./didi.sh search "user authentication flow"
```

**Getting detailed code snippets:**
```bash
./didi.sh details "websocket system architecture" -n 3
```

**Understanding complex patterns:**
```bash
./didi.sh ask "Explain how the contest system is implemented"
```

## 🏆 Features

- **Fast Semantic Search**: Find code based on concepts, not just literal text
- **Context-Aware Results**: Results include relevant surrounding code
- **DegenDuel-Specific Knowledge**: Tailored specifically for the DegenDuel codebase
- **Configurable Paths**: Works with any repository location
- **Optimized for Code**: Special handling for code files and structure
- **Expandable**: Didi can learn from codebase updates automatically

## 🛣️ Roadmap

- [ ] UI interface for easier interaction with Didi
- [ ] Integration with development environments
- [ ] Support for additional DegenDuel repositories
- [ ] Enhanced visualization of code relationships
- [ ] Function-level understanding and summarization

## 📚 How Didi Works

1. **Indexing**: Code files are processed, chunked, and embedded into vectors
2. **Storage**: Vectors are stored in a database for fast retrieval
3. **Search**: User queries are converted to vectors and matched against the database
4. **Retrieval**: Most relevant code is retrieved based on vector similarity
5. **Analysis**: Didi provides insights based on retrieved code

## 📄 License

This project is licensed under the MIT License - see the LICENSE file for details.

## 🙏 Acknowledgements

- LlamaIndex for the RAG framework
- Sentence-Transformers for embeddings
- DegenDuel team for creating an awesome platform 

## 🛠️ Additional Tools

### Vanity-Grinder

The degenduel-gpu repository also contains a GPU-accelerated Solana vanity address generator tool:

```bash
# Quick start with the vanity-grinder tool
./run-vanity.sh
```

This tool provides:

- CUDA-accelerated generation of Solana vanity addresses
- REST API for integration with the Command Server
- Automatic callback notifications when addresses are found
- Detailed performance metrics and time estimation

The vanity-grinder requires Rust 1.81.0 or newer to build, but the Lambda Labs environment provides Rust 1.75.0. We've created a simple solution by storing Rust 1.81.0 symlinks in the persistent storage directory, allowing consistent usage across sessions.

For detailed usage, see the [vanity-grinder README](/vanity-grinder/README.md).

# Lambda Labs GPU Workflow Guide

## Quick Commands

- `./revive` - Quickly restore the vanity-grinder environment in one step

## Lambda Labs Best Practices

### Persistent vs. Ephemeral Storage

Lambda Labs instances have two types of storage:

1. **Persistent Storage**: 
   - Path: `/home/ubuntu/degenduel-gpu/`
   - Survives instance termination and restarts
   - Ideal for code, built binaries, and important data
   - Use this for all work you want to keep

2. **Ephemeral Storage**:
   - All other directories (e.g., `/home/ubuntu/Downloads/`)
   - Lost when instance is terminated
   - Use only for temporary files or caches

### Instance Lifecycle Management

**Starting a Fresh Session**:
```bash
cd /home/ubuntu/degenduel-gpu
./revive  # Sets up environment for vanity-grinder
```

**Before Termination Checklist**:
1. Ensure all code changes are saved to the `/home/ubuntu/degenduel-gpu/` directory
2. Push any important changes to GitHub if applicable
3. Copy any important data to persistent storage
4. Stop any running services: `pkill vanity-grinder`

**Efficient Cost Management**:
- Lambda Labs charges by the hour
- Terminate instances when not in use
- Consider using scheduled scripts for automatic termination

### Environment Setup

Our repository uses a custom approach to handle environment dependencies:

1. **Rust Version Management**:
   - We store symlinks in `tools/bin/` pointing to Rust 1.81.0
   - This ensures consistent builds regardless of system Rust version

2. **Helper Scripts**:
   - `run-vanity.sh`: Full setup script with detailed output
   - `revive`: Quick one-command restoration

3. **GPU Resources**:
   - CUDA libraries are installed system-wide on Lambda Labs
   - Our code automatically finds and uses available GPU resources
   - Run `nvidia-smi` to monitor GPU usage

### Project Organization

The degenduel-gpu repository follows a structured organization:

1. **Tools Directory**:
   - `tools/bin/`: Environment configuration symlinks
   - Contains properly versioned tools that work with our code

2. **Project Directories**:
   - `vanity-grinder/`: GPU-accelerated Solana vanity address generator
   - Each project has its own README and documentation

3. **Helper Scripts**:
   - Located in the repository root
   - Follow the naming convention of `verb.sh` or simple `verb`

### Additional Resources

- [Lambda Labs Documentation](https://lambdalabs.com/service/gpu-cloud/docs)
- [Rust Version Management](https://rust-lang.github.io/rustup/concepts/toolchains.html)
- [CUDA Programming Guide](https://docs.nvidia.com/cuda/cuda-c-programming-guide/)
- [Solana Developers Documentation](https://solana.com/developers)
