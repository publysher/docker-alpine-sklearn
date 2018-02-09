FROM publysher/alpine-scipy:1.0.0-numpy1.14.0-python3.6-alpine3.7

RUN apk --no-cache add --virtual .builddeps g++ musl-dev     && pip install scikit-learn==0.19.1     && apk del .builddeps     && rm -rf /root/.cache
