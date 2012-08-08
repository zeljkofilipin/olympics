require "bundler/setup"
require "watir-webdriver"

# open browser and go to the page
browser = Watir::Browser.new :chrome
browser.goto "http://www.google.com/doodles/hurdles-2012"

# start the game
browser.div(id: "hplogo").frame.div.click

# play!
browser.send_keys :left
browser.send_keys :right
browser.send_keys :space
