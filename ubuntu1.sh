#!/bin/bash
cp ubuntu.sh ../
cd ~
rm -rf pyenv-installer-ubuntu
sudo apt-get update
sudo apt-get upgrade
git clone https://github.com/Shu-vi/Artificial-intelligence-systems.git
curl https://pyenv.run | bash
sudo apt update
sudo apt install -y build-essential libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev llvm libncurses5-dev libncursesw5-dev xz-utils tk-dev libffi-dev liblzma-dev
echo 'export PYENV_ROOT ="$HOME/.pyenv"' >> ~/.bashrc
echo 'command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(pyenv init -)"' >> ~/.bashrc
exec $SHELL
