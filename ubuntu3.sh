#!/bin/bash
cd Artificial-intelligence-systems;
pyenv install 3.7.10;
pyenv local 3.7.10;
python -m venv env;
source env/bin/activate;
pip install --upgrade pip;
pip install deeppavlov;
python -m deeppavlov install squad_bert;
pip install pyTelegramBotAPI;
python main.py;
