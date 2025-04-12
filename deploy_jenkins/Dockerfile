# Use the official Jenkins LTS base image
FROM jenkins/jenkins:lts

# Set the user to root to install additional dependencies
USER root

# Install OpenSSH client and Git (you can add more packages as needed)
RUN apt-get update && apt-get install -y \ 
    apt-utils \ 
    openssh-client \
    git \
    docker.io \
    sudo \
    curl \
    ca-certificates \
    && rm -rf /var/lib/apt/lists/*




# Install Node.js, npm
RUN curl -fsSL https://deb.nodesource.com/setup_18.x | bash - \
  && apt-get update \
  && apt-get install -y nodejs

# Optional: Install yarn if needed
# RUN npm install -g yarn

# Install Vite globally
RUN npm install -g vite




# Create the necessary directories and set permissions
RUN mkdir -p /var/jenkins_home/.ssh && \
    chmod 700 /var/jenkins_home/.ssh

# Switch back to Jenkins user to run Jenkins with non-root privileges
USER jenkins

# Expose ports for Jenkins
EXPOSE 8080 50000


