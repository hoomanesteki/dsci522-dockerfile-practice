FROM quay.io/jupyter/minimal-notebook:afe30f0c9ad8

COPY conda-linux-64.lock /tmp/conda-linux-64.lock

RUN /opt/conda/bin/mamba install --yes --file /tmp/conda-linux-64.lock && \
    /opt/conda/bin/mamba clean --all -f -y
