FROM ruby:2.3.0-slim

COPY Gemfile* ./

RUN bundle install

ADD . .

CMD ["bin/game_of_life"]
