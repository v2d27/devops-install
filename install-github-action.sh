#!/bin/bash

echo "Remember to run inside \"github\" user"

adduser github

# Create a folder
mkdir actions-runner && cd actions-runner
# Download the latest runner package
curl -o actions-runner-linux-x64-2.320.0.tar.gz -L https://github.com/actions/runner/releases/download/v2.320.0/actions-runner-linux-x64-2.320.0.tar.gz
# Optional: Validate the hash
echo "93ac1b7ce743ee85b5d386f5c1787385ef07b3d7c728ff66ce0d3813d5f46900  actions-runner-linux-x64-2.320.0.tar.gz" | shasum -a 256 -c
# Extract the installer
tar xzf ./actions-runner-linux-x64-2.320.0.tar.gz


# Create the runner and start the configuration experience
./config.sh --url https://github.com/Water-and-Environment-Solutions/8ten_api --token BMYG5SGE2RUR2D3O2BC7BLTHGQ3VA
# Last step, run it!
./run.sh

