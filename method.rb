def initialize
@user_name = user_name
end

def greeting
    puts "Hi there!"
    sleep(1)
    puts "Welcome to our check-in app!"
    sleep(1)
    puts "What's your name?"
    sleep(1)
    #take input from user
    @user_name = gets.strip.capitalize
    puts "Hi #{@user_name}, nice to meet you!"

end

def check_user_name
    
    sleep(2)
    puts "Press 1) to Check-in, if you are new user."
    puts "Press 2) to play a toss coin game, if you already check-in yourself."
    puts "Press 3) to exit the program."
     #take input from user
   menu_input = gets.chomp.to_i

end

def tossing_coin_method

    puts "Let's play toss coin game, how many time's you would like to toss?"
    sleep(2)
    puts "Press 1), toss 1 time."
    puts "Press 2), toss 3 times."
    puts "Press 3), toss 5 times."
    puts "Press 4), exit the game."
    puts "Press 5), back to the menu."
    #ask user input data
    toss_coins_menu = gets.chomp.to_i

end