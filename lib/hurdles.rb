require_relative "olympics"

def run_and_jump(browser, number)
  number.times do
    puts "Run!"
    left(browser)
    right(browser)
  end
  puts "Jump!"
  space(browser)
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
