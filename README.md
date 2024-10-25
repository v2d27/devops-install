## Install latest gitlab-runner

```bash
#!/bin/bash
sudo apt-get update
sudo apt-get upgrade -y

# Install the necessary dependencies
sudo apt-get install -y curl ca-certificates gnupg lsb-release

# Add the GitLab Runner repository
curl -fsSL https://packages.gitlab.com/install/repositories/runner/gitlab-runner/script.deb.sh | sudo bash

# Install gitlab-runner
sudo apt-get install gitlab-runner -y

# Start service and startup with linux
sudo systemctl enable gitlab-runner
sudo systemctl status gitlab-runner

sudo gitlab-runner --version

# Register runner with gitlab
sudo gitlab-runner register
```

