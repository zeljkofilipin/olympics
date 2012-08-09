def go_to_game
  require "bundler/setup"
  require "watir-webdriver"

  browser = Watir::Browser.new :chrome
  browser.goto "http://www.google.com/doodles/basketball-2012"
  browser
end
def jump_and_shoot(browser, wait_before_shooting, time_between_jump_and_shoot)
  sleep wait_before_shooting
  browser.send_keys :space
  sleep time_between_jump_and_shoot
  browser.send_keys :space
end
def start_the_game(browser)
  browser.div(id: "hplogo").frame.div.click
end

browser = go_to_game
start_the_game(browser)

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
