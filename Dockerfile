FROM continuumio/miniconda3

RUN conda create -n textgen
SHELL ["conda", "run", "-n", "textgen", "/bin/bash", "-c"]

RUN conda install torchvision torchaudio pytorch-cuda=11.7 git -c pytorch -c nvidia

RUN git clone https://github.com/oobabooga/text-generation-webui
WORKDIR text-generation-webui
RUN pip install -r requirements.txt

RUN python download-model.py facebook/opt-6.7b

# RUN conda activate textgen
# RUN python server.py --auto-devices --chat --no-stream --model opt-6.7b --flexgen --compress-weight --listen --listen-port 8080
