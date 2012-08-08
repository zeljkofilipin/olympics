def run_and_jump(browser, number)
  number.times do
    puts "Run!"
    browser.send_keys :left
    browser.send_keys :right
  end
  puts "Jump!"
  browser.send_keys :space
end

require "bundler/setup"
require "watir-webdriver"

# open browser and go to the page
browser = Watir::Browser.new :chrome
browser.goto "http://www.google.com/doodles/hurdles-2012"

# ready set go
sleep 5
puts "\nReady..."
sleep 1
puts "Set..."
browser.div(id: "hplogo").frame.div.click
puts "GO!"

# play!
run_and_jump(browser, 15)
15.times do
  run_and_jump(browser, 9)
end
