FROM ruby:2.6

WORKDIR /home/app

COPY Gemfile* ./
COPY . .

RUN bundle install
VOLUME ["/home/app"]

ENTRYPOINT [ "bundle", "exec", "jekyll", "serve" ]
