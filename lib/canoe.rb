require_relative "olympics"

def paddle(browser, number)
  number.times do
    left(browser)
    right(browser)
  end
end

browser = go_to_game("slalom-canoe")
sleep 1
start_the_game(browser)
paddle(browser, 200)
