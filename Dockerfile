FROM public.ecr.aws/docker/library/node:19.9.0-alpine

ARG _WORKDIR=/home/node/app
ARG PORT=3333

USER root
RUN apk add git

WORKDIR ${_WORKDIR}

ADD . ${_WORKDIR}
RUN yarn install

USER node
EXPOSE ${PORT}

CMD yarn start