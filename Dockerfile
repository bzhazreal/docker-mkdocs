FROM alpine:latest

LABEL maintainer="bzhazreal"

VOLUME /app
WORKDIR /app

RUN apk add --no-cache python3 python3-dev gcc musl-dev &&\
    pip3 install --no-cache-dir mkdocs\
                                pymdown-extensions\
                                markdown-include\
                                pygments &&\
    apk del gcc musl-dev python3-dev


EXPOSE 8000

ENTRYPOINT [ "mkdocs" ]
