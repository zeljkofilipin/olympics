def go_to_game(name)
  puts "\nGo to game.\n\n"

  require "bundler/setup"
  require "watir-webdriver"

  browser = Watir::Browser.new :chrome
  browser.goto "http://www.google.com/doodles/#{name}-2012"
  browser
end
def start_the_game(browser)
  puts "\nGo!\n"
  browser.div(id: "hplogo").frame.div.click
end
