require_relative "olympics"

def jump_and_shoot(browser, number_of_balls, wait_before_shooting, time_between_jump_and_shoot)
  number_of_balls.times do
    sleep wait_before_shooting
    space(browser)
    puts "wait #{time_between_jump_and_shoot} s"
    sleep time_between_jump_and_shoot
    space(browser)
  end
end

browser = go_to_game("basketball")
start_the_game(browser)
jump_and_shoot(browser, 5, 0.9, 0.2)
jump_and_shoot(browser, 4, 0.9, 0.4)
jump_and_shoot(browser, 4, 0.9, 0.6)
jump_and_shoot(browser, 2, 0.9, 0.8)
