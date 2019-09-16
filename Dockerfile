FROM ubuntu:14.04
RUN apt-get update && apt-get install -y libgdbm3 libglib2.0-dev make g++ curl python3-flask

COPY Hindi-Shallow-Parser-64bit /shallow_parser_hindi/

ENV SHALLOW_PARSER_HIN="/root/sampark/shallow_parser_hin"

ENV PATH="$PATH:$SHALLOW_PARSER_HIN/bin/sys/hin/"

WORKDIR "/shallow_parser_hindi/"

#RUN cd /shallow_parser_hindi/

RUN make install
EXPOSE 8010
CMD python3 python_scripts/run_server.py
