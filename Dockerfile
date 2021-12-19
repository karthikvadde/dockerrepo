FROM ruby:3.0.3

RUN bundle config --global frozen -1
RUN apt-get update -y
RUN apt-get install -y ruby-sinatra

COPY hello.rb hello.rb
CMD ["ruby","hello.rb"]

EXPOSE 3000
CMD [ "/bin/bash"]
