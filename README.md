# flexgen-webui-playground

# Required
- [NVIDIA Container Toolkit](https://nvidia.github.io/nvidia-container-runtime/)

# Running
```
$ make
$ docker run --rm -i -t -p 8080:8080 --gpus all takumi/flexgen-webui-playground
# conda activate textgen
# python server.py --auto-devices --chat --no-stream --model opt-6.7b --flexgen --compress-weight --listen --listen-port 8080
```
