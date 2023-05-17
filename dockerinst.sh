#!/bin/bash
pacman -S docker
systemctl enable --now docker

# add docker group
groupadd -f docker
usermod -aG docker phonkd
newgrp docker

yay -S docker-compose
