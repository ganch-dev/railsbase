FROM ruby:3.2.2-alpine3.18 AS base
RUN apk --update add gcompat tzdata build-base mariadb-dev libxslt-dev libxml2-dev nodejs npm git vim curl && \
    npm install -g yarn

RUN adduser -u 1000 -s /bin/bash -h /opt/railsbase -S railsbase
USER railsbase
RUN mkdir -p /opt/railsbase/app /opt/railsbase/.bundle
WORKDIR /opt/railsbase/app

RUN gem install bundler -v 2.3.26 --no-doc
COPY Gemfile Gemfile.lock ./
RUN --mount=type=secret,id=bundle_config,dst=/opt/railsbase/.bundle/config,uid=1000 \
    bundle install -j 4

COPY package.json yarn.lock ./
RUN --mount=type=secret,id=npmrc,dst=/opt/railsbase/.npmrc,uid=1000 \
    yarn install

COPY ./docker/wait-for.sh /docker-entrypoint.sh
COPY --chown=railsbase . .

ARG VERSION=unspecified
RUN echo $VERSION > VERSION

ENTRYPOINT [ "/docker-entrypoint.sh" ]
CMD ["bin/rails", "server"]

FROM base AS ci

FROM base AS prod
RUN bin/rake assets:precompile
