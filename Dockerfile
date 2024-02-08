FROM python:3.11

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

RUN apt update && apt install -y --no-install-recommends curl wget
RUN  python -m pip install --upgrade pip

RUN useradd -ms /bin/bash python

USER python

WORKDIR /home/python/app

ENV PYTHONPATH=${PYTHONPATH}/home/python/app
ENV PATH="$PATH:$PYTHONPATH/.venv/bin"


CMD ["tail", "-f", "/dev/null"]