FROM python:3.8

ADD requirements.txt /requirements.txt
RUN pip install -r requirements.txt

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]

#RUN ["sh", "-c", "echo $GITHUB_SHA"]
#RUN ["sh", "-c", "echo $INPUT_FILENAME"]
#RUN chmod +x $INPUT_FILENAME
#RUN ["sh", "-c", "chmod +x $INPUT_FILENAME"]
#CMD python3 -m compileall -b $INPUT_FILENAME
