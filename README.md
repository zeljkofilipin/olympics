# Automating Google Hurdles, Basketball and Canoe

The games are located at:

- http://www.google.com/doodles/hurdles-2012
- http://www.google.com/doodles/basketball-2012
- https://www.google.com/doodles/slalom-canoe-2012

Project repository is at https://github.com/zeljkofilipin/olympics

Tested with Ruby 1.9.3p194.

Install required RubyGems:

    gem update --system
    gem install bundler
    bundle

Play the games with:

    bundle exec rake hurdles
    bundle exec rake basketball
    bundle exec rake canoe
