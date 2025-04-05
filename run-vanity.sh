#\!/bin/bash
# Created by Claude to make using Rust 1.81.0 easier

export PATH="/home/ubuntu/degenduel-gpu/tools/bin:$PATH"
cd /home/ubuntu/degenduel-gpu/vanity-grinder

echo "Vanity-Grinder is ready to use\!"
echo ""
echo "Available commands:"
echo "  ./target/release/vanity-grinder benchmark           # Test GPU performance"
echo "  ./target/release/vanity-grinder estimate 4          # Estimate time for 4-char pattern"
echo "  ./target/release/vanity-grinder generate DEGEN      # Generate vanity address" 
echo "  ./target/release/vanity-grinder serve --host 0.0.0.0 --port 7777  # Start REST API"
echo ""
echo "Your Command Server at 147.79.74.67 is automatically allowed to connect"

