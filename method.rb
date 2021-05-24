require 'colorize'

def initialize
@user_name = user_name
@user_string = user_string
@new_user = new_user
end



def greeting_color
     colours = String.colors.dup - [:black, :light_black, :yellow, :blue]
     return colours.sample
end

def greeting
    puts "Hi there!"
    sleep(1)
    puts "Welcome to our check-in app!"
    sleep(1)
    puts "What's your name?"
    sleep(1)
    #take input from user
     print "> "
    @user_name = gets.strip.capitalize.colorize(greeting_color)
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

def new_user_check
    # add the user to user list, check if the name is already in.
    # if the name is in, double check message
    # if the name is not in the list, add the name, and give back a client number.
    #if client number is 8, 18, 28, 38, give a congratulation message, ask them to contect staff. 

    puts "Hi there. Glad to see you #{@user_name}! Let's check your number now."
 
 #input user name to client_data.txt   
 File.open("client_data.txt", "a") { |f| f.write "#{@user_name}\n" }
 # check the user's index number
 
#  FileIO.write(@user_string)
 #return the index of the user in the user list
    puts "Emmmm, your number is..."
    sleep(2)
    puts "random_number"
end

def tossing_coin_method

    puts "Let's play toss coin game, how many time's you would like to toss?"
    sleep(2)
    puts "Press 1) toss 1 time."
    puts "Press 2) toss 3 times."
    puts "Press 3) toss 5 times."
    puts "Press 4) exit the game."
    puts "Press 5) back to the menu."
    print "> "
    #ask user input data
    toss_coins_menu = gets.chomp.to_i

end

def count_down

    puts "Start"
            sleep(2)
            puts "3"
            sleep(1)
            puts "2"
            sleep(1)
            puts "1"
            sleep(1)
            
end

def good_bye
    puts "Thanks! Good bye #{@user_name}!"
    sleep(2)
    system 'clear'
end