require_relative "olympics"

def run_and_jump(browser, number)
  number.times do
    left(browser)
    right(browser)
  end
  space(browser)
end

browser = go_to_game("hurdles")

# ready set go
sleep 5
start_the_game(browser)

# play!
run_and_jump(browser, 15)
15.times do
  run_and_jump(browser, 9)
end
