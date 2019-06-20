FROM ubuntu:14.04
RUN apt-get update && apt-get install -y libgdbm3 libglib2.0-dev make g++

COPY . /shallow_parser_hindi

ENV SHALLOW_PARSER_HIN="~/sampark/shallow_parser_hin"

ENV PATH="$PATH:$SHALLOW_PARSER_HIN/bin/sys/hin"

RUN cd /shallow_parser_hindi/Hindi-Shallow-Parser-64bit/

#RUN make install
#RUN make /app
#CMD python /app/app.py
