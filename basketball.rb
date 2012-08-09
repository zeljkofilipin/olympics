def go_to_game
  require "bundler/setup"
  require "watir-webdriver"

  browser = Watir::Browser.new :chrome
  browser.goto "http://www.google.com/doodles/basketball-2012"
  browser
end
def jump_and_shoot(browser, number_of_balls, wait_before_shooting, time_between_jump_and_shoot)
  number_of_balls.times do
    sleep wait_before_shooting
    browser.send_keys :space
    sleep time_between_jump_and_shoot
    browser.send_keys :space
  end
end
def start_the_game(browser)
  browser.div(id: "hplogo").frame.div.click
end

browser = go_to_game
start_the_game(browser)
jump_and_shoot(browser, 5, 1, 0.2)
jump_and_shoot(browser, 4, 1, 0.4)
jump_and_shoot(browser, 4, 1, 0.6)
jump_and_shoot(browser, 2, 1, 0.8)
