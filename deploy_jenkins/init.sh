#!/bin/bash

# Add the Git server's SSH key to known_hosts
mkdir -p /var/jenkins_home/.ssh
ssh-keyscan git.aglic.dz >> /var/jenkins_home/.ssh/known_hosts

# Set permissions to ensure Jenkins can access the known_hosts file
chmod 700 /var/jenkins_home/.ssh
chmod 644 /var/jenkins_home/.ssh/known_hosts
