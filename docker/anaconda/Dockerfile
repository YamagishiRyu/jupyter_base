FROM continuumio/miniconda
WORKDIR /workspace
COPY workspace/env.yaml /workspace

# create conda environment
RUN conda update conda
RUN conda create -n jupyter_base
RUN conda env update -f /workspace/env.yaml -n jupyter_base

# conda activate jupyter_base
SHELL ["conda", "run", "-n", "jupyter_base", "/bin/bash", "-c"]

#RUN conda install jupyterlab # when building image
CMD jupyter-lab --no-browser --port=8888 --ip=0.0.0.0 --allow-root  --NotebookApp.token=''
