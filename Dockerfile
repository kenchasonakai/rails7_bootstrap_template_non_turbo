FROM ruby:3.2.2
ENV LANG C.UTF-8
ENV TZ Asia/Tokyo
RUN curl -sL https://deb.nodesource.com/setup_19.x | bash - \
&& wget --quiet -O - /tmp/pubkey.gpg https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - \
&& echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list \
&& apt-get update -qq \
&& apt-get install -y build-essential libpq-dev nodejs yarn
RUN mkdir /app
WORKDIR /app
RUN gem install bundler
COPY Gemfile /app/Gemfile
COPY Gemfile.lock /app/Gemfile.lock
COPY yarn.lock /app/yarn.lock
RUN bundle install
RUN yarn install
COPY . /app
