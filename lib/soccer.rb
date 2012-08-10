require_relative "olympics"

browser = go_to_game("soccer")
start_the_game(browser)
sleep 1
left(browser)
sleep 1
right(browser)
sleep 1
space(browser)
