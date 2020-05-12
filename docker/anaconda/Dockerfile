FROM continuumio/miniconda
WORKDIR /workspace
COPY workspace/env.yaml /workspace

# create conda environment
RUN conda env update -f /workspace/env.yaml

#RUN conda install jupyterlab # when building image
CMD jupyter-lab --no-browser --port=8888 --ip=0.0.0.0 --allow-root  --NotebookApp.token=''
