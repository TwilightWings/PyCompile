FROM python:3.8

ADD requirements.txt /requirements.txt
RUN pip install -r requirements.txt

ENTRYPOINT ["sh", "-c", "echo $GITHUB_SHA"]
#RUN chmod +x $INPUT_FILENAME
RUN ["/bin/sh", "-c", "chmod +x $INPUT_FILENAME"]
CMD python3 -m compileall -b $INPUT_FILENAME
