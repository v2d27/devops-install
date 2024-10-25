## Install latest Docker and Docker-Compose
```bash
#!/bin/bash
sudo apt install -y apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt update -y
sudo apt install docker-ce -y
sudo systemctl start docker
sudo systemctl enable docker
sudo curl -L "https://github.com/docker/compose/releases/latest/download/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
docker -v
docker-compose -v
```
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

