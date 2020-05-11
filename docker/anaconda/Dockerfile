FROM continuumio/miniconda
WORKDIR /workspace
COPY workspace/env.yaml /workspace
RUN conda env update --file /workspace/env.yaml
CMD jupyter-lab --no-browser --port=8888 --ip=0.0.0.0 --allow-root
