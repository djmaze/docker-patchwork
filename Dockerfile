FROM node:6

RUN npm install ssb-patchwork -g

ENV APP_UID 1000
ENV APP_GID 1000
RUN groupadd -g $APP_GID app && useradd -m -u $APP_UID -g $APP_GID app
USER app

VOLUME /home/app/.ssb
ENTRYPOINT ["patchwork"]
EXPOSE 7777
