require_relative "olympics"

def paddle(browser, number)
  number.times do
    puts "Left!"
    browser.send_keys :left
    puts "Right!"
    browser.send_keys :right
  end
end

browser = go_to_game("slalom-canoe")
sleep 1
start_the_game(browser)
paddle(browser, 100)
