FROM python:3.6-alpine
LABEL maintainer="Dmitry Figol <git@dmfigol.me>"

RUN apk add --no-cache \
    build-base \
    gcc \
    libffi-dev \
    openssl-dev \
    python3-dev

RUN pip install --no-cache-dir -U pip setuptools
RUN pip install --no-cache-dir \
    tornado==4.5.3 \
    requests \
    jupyter \
    xmltodict \
    netmiko \
    netdev \
    aiohttp \
    aiofiles \
    ruamel.yaml \
    deepdiff

EXPOSE 58888

CMD ["/bin/sh", "-c", "jupyter notebook --ip=0.0.0.0 --port=58888 --allow-root --no-browser --NotebookApp.token=''"]

WORKDIR /jupyter

# Run:
# docker run -it --rm -p 58888:58888 -v ${PWD}/jupyter:/jupyter/ dmfigol/jupyter-netdevops:clus-2018