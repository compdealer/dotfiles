#!/bin/bash
apt-get install unzip
curl -s https://ohmyposh.dev/install.sh | bash -s

echo 'eval "$(oh-my-posh init bash --config powerlevel10k_rainbow)"' >> ~/.bashrc
