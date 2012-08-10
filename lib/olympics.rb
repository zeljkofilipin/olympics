def go_to_game(name)
  puts "\nGo to game.\n\n"

  require "bundler/setup"
  require "watir-webdriver"

  browser = Watir::Browser.new :chrome
  browser.goto "http://www.google.com/doodles/#{name}-2012"
  browser
end
def left(browser)
  browser.send_keys :left
end
def right(browser)
  browser.send_keys :right
end
def space(browser)
  browser.send_keys :space
end
def start_the_game(browser)
  puts "\nGo!\n"
  browser.div(id: "hplogo").frame.div.click
end
