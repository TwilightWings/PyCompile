FROM python:3.8

ADD requirements.txt /requirements.txt
RUN pip install -r requirements.txt

RUN chmod +x ${INPUT_FILENAME}
CMD python3 -m compileall -b ${INPUT_FILENAME}
