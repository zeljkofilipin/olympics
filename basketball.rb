def jump_and_shoot(browser, wait_before_shooting, time_between_jump_and_shoot)
  sleep wait_before_shooting
  browser.send_keys :space
  sleep time_between_jump_and_shoot
  browser.send_keys :space
end

require "bundler/setup"
require "watir-webdriver"

# open browser and go to the page
browser = Watir::Browser.new :chrome
browser.goto "http://www.google.com/doodles/basketball-2012"

browser.div(id: "hplogo").frame.div.click

5.times do
  jump_and_shoot(browser, 1, 0.2)
end

4.times do
  jump_and_shoot(browser, 1, 0.4)
end

4.times do
  jump_and_shoot(browser, 1, 0.6)
end

2.times do
  jump_and_shoot(browser, 1, 0.8)
end
