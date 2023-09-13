#!/bin/bash

mkdir python
cd python
sudo apt-get update
sudo apt-get upgrade
git clone https://github.com/Shu-vi/Artificial-intelligence-systems.git
curl https://pyenv.run | bash
sudo apt update
sudo apt install -y build-essential libssl-dev zliblg-dev libbz2-dev libreadline-dev libsqlite3-dev llvm libncurses5-dev libncursesw5-dev xz-utils tk-dev libffi-dev liblzma-dev
exec $SHELL
echo 'export PYENV_ROOT ="$HOME/.pyenv"' >> ~/.bashrc
echo 'command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(pyenv init -)"' >> ~/.bashrc
exec $SHELL
cd Artificial-intelligence-systems
pyenv install 3.7.10
pyenv local 3.7.10
python -m venv env
source env/bin/activate
pip install --upgrade pip
pip install deeppavlov
python -m deeppavlov install squad_bert
pip install pyTelegramBotAPI
python main.py
