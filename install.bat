@echo off
git clone https://github.com/Blane187/HRVC.git
cd HRVC
echo done cloning repository
pip install -r requirements.txt
pip install gradio-client==0.8.1
pip install gradio==3.48.0
python -m pip install ort-nightly-gpu --index-url=https://aiinfra.pkgs.visualstudio.com/PublicPackages/_packaging/ort-cuda-12-nightly/pypi/simple/
sudo apt update
sudo apt install sox
echo success install requirements.txt
python src/download_models.py
echo done install hubert and mdxnet models
python src/webui.py
