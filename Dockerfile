FROM python:3.8.1-alpine3.11
LABEL maintainer="gitworkflows, alerts@log4j.com"

RUN apk add --no-cache git git-fast-import openssh build-base
WORKDIR /docs

COPY action.sh /action.sh

RUN apk add --no-cache bash && chmod +x /action.sh

ENTRYPOINT ["/action.sh"]
