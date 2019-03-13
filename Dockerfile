FROM alpine

RUN apk add python2 nodejs npm

WORKDIR /hyperflow

COPY Pegasus Pegasus
COPY dax-converter .
COPY convert-dax.sh .

ENV PYTHONPATH=/hyperflow
RUN npm install xml2js
RUN npm install shell-quote
RUN npm install optimist


ENTRYPOINT ["/hyperflow/convert-dax.sh"]
CMD []
