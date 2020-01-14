FROM continuumio/anaconda3
WORKDIR /workspace
CMD jupyter-lab --no-browser --port=8888 --ip=0.0.0.0 --allow-root
