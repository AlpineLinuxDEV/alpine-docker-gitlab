FROM ruby:2.7-alpine3.13

ENV GITLAB_VERSION=13.12.9

COPY overlay /

RUN  setup.sh

EXPOSE 22 80

ENTRYPOINT [ "entrypoint.sh" ]

CMD [ "start" ]
