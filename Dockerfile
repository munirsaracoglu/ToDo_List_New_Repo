FROM timbru31/ruby-node:2.7-gallium

COPY . /app
WORKDIR /app/backend

RUN bundle install

RUN cd /app && yarn install && yarn build

CMD ["bundle", "exec", "ruby", "server.rb"]
EXPOSE 4567
