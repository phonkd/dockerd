#!/bin/bash
sudo pacman -S docker
sudo systemctl enable --now docker

# add docker group
sudo groupadd -f docker
sudo usermod -aG docker phonkd
newgrp docker
