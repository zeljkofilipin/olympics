require_relative "olympics"

def center_mouse(browser)
  browser.driver.action.move_to(browser.driver.find_element(:id, 'hplogo')).perform
end
def left(browser)
  puts "Left!"
  browser.driver.action.move_by(-100, 0).perform
end
def right(browser)
  puts "Rigth!"
  browser.driver.action.move_by(100, 0).perform
end
def tutorial(browser)
  sleep 1
  center_mouse(browser)
  left(browser)
  sleep 1
  right(browser)
  sleep 1
  space(browser)
end

browser = go_to_game("soccer")
start_the_game(browser)
tutorial(browser)
