FROM python:latest
LABEL maintainer="SAM"
WORKDIR /usr/app/src
RUN pip install flask
COPY api.py ./
CMD ["python","api.py"]