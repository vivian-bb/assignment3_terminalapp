require 'colorize'
require "espeak"
require 'colorized_string'



def initialize
@user_name = user_name
@user_string = user_string
@new_user = new_user
end



def greeting_color
     colours = String.colors.dup - [:black, :light_black, :yellow, :blue]
     return colours.sample
end
def welcome_message
    system 'clear'
    puts "**********************************************************************************"
    puts "----------------------------------------------------------------------------------"
    puts " "
    puts ColorizedString["█▀▀ █░█ █▀▀ █▀▀ █▄▀ ▄▄ █ █▄░█   ▄▀█ █▄░█ █▀▄   ▀█▀ █▀█ █▀ █▀ █ █▄░█ █▀▀"].colorize(:red)
    puts ColorizedString["█▄▄ █▀█ ██▄ █▄▄ █░█ ░░ █ █░▀█   █▀█ █░▀█ █▄▀   ░█░ █▄█ ▄█ ▄█ █ █░▀█ █▄█"].colorize(:red)
    puts " "
    puts "----------------------------------------------------------------------------------"
    puts "**********************************************************************************"
    puts " "
end
def greeting
    
    sleep(1)
    puts ColorizedString["Hi there!"].colorize(:light_magenta)
    sleep(1)
    puts ColorizedString["Welcome to our check-in app!"].colorize(:yellow)
    sleep(1)
    puts ColorizedString["What's your full name?"].colorize(:light_black)
    sleep(1)
    #take input from user
     print  print ColorizedString["> "].colorize(:blue)
    @user_name = gets.strip.upcase.colorize(greeting_color)
        puts "Hi #{@user_name}, so nice to meet you!"
        puts " "
   
end



def check_user_name
    puts " "
  
    sleep(2)
    puts "Press 1) to Check-in, if you are new user."
    puts "Press 2) to play a toss coin game, if you already check-in yourself."
    puts "Press 3) to exit the program."
     #take input from user
  
   print  print ColorizedString["> "].colorize(:blue)
   menu_input = gets.chomp.to_i
end

def new_user_check
    # add the user to user list, check if the name is already in.
    # if the name is in, double check message
    # if the name is not in the list, add the name, and give back a client number.
    #if client number is 8, 18, 28, 38, give a congratulation message, ask them to contect staff. 
    system 'clear'
    puts "Hi there. Glad to see you #{@user_name}!"
    sleep(2)
    puts "One second, let's check your number now."
    sleep(2)
    print "."
    sleep(1)
    print "."
    sleep(1)
    print "."
    sleep(1)
 #input user name to client_data.txt   
#  File.open("client_data.txt", "a") { |f| f.write "#{@user_name}\n" }
 File.write("client_data.txt" , "\n#{@user_name}" , mode: "a")

 # check the user's index number
 filename = 'client_data.txt'
 line_count = `wc -l "#{filename}"`.strip.split(' ')[0].to_i 
  
#  FileIO.write(@user_string)
 #return the index of the user in the user list
 if line_count == 8 || line_count == 18 ||  line_count == 28 ||  line_count == 38 
    
    puts ColorizedString[" Oh, lucky you! "].colorize(:light_yellow ).colorize( :background => :red)
    puts " your number is 00#{line_count}."
    sleep(1)
    puts ColorizedString[" You Won the Lottery! Congratulations! "].colorize(:light_yellow ).colorize( :background => :red)
    sleep(1)
    puts "Find our staff member and show him this message."

 else
    puts "Thanks for waiting, your number is..00#{line_count}."
    sleep(2)
    puts "Have fun!"
    sleep(2)
 end
end

def tossing_coin_method
   
    puts "Let's play toss coin game, how many time's you would like to toss?"
    sleep(2)
    puts "Press 1) toss 1 time."
    puts "Press 2) toss 3 times."
    puts "Press 3) toss 5 times."
    puts "Press 4) exit the game."
    puts "Press 5) back to the menu."
    print ColorizedString["> "].colorize(:blue)
    #ask user input data
    toss_coins_menu = gets.chomp.to_i

end

def count_down
    puts " 
    █▀ ▀█▀ ▄▀█ █▀█ ▀█▀
    ▄█ ░█░ █▀█ █▀▄ ░█░  "
    # puts "Start"
            sleep(2)
            puts "
            ██████╗░
            ╚════██╗
            ░█████╔╝
            ░╚═══██╗
            ██████╔╝
            ╚═════╝░"
            sleep(1)
            puts "
            ██████╗░
            ╚════██╗
            ░░███╔═╝
            ██╔══╝░░
            ███████╗
            ╚══════╝"
            sleep(1)
            puts "
            ░░███╗░░
            ░████║░░
            ██╔██║░░
            ╚═╝██║░░
            ███████╗
            ╚══════╝"
            sleep(1)
            
end

def good_bye
    puts "
    ▀█▀ █░█ ▄▀█ █▄░█ █▄▀ █▀ ░   █▀▀ █▀█ █▀█ █▀▄ █▄▄ █▄█ █▀▀ █
    ░█░ █▀█ █▀█ █░▀█ █░█ ▄█ █   █▄█ █▄█ █▄█ █▄▀ █▄█ ░█░ ██▄ ▄ #{@user_name}!"
    sleep(5)
    system 'clear'
end
