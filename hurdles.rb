require_relative "olympics"

def run_and_jump(browser, number)
  number.times do
    puts "Run!"
    browser.send_keys :left
    browser.send_keys :right
  end
  puts "Jump!"
  browser.send_keys :space
end

browser = go_to_game("hurdles")

# ready set go
sleep 5
puts "\nReady..."
sleep 1
puts "Set..."
start_the_game(browser)
puts "GO!"

# play!
run_and_jump(browser, 15)
15.times do
  run_and_jump(browser, 9)
end
