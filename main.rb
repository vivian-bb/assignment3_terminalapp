# when the program starts, greeting
# Check new user or not
# Ask the user name
# Greeting to user, return a index number to user
# Check if index number is 8, 18, 28, 38.

# require_relative 'check_in_list.rb'



def greeting

puts "Hi there!"
sleep(1)
puts "Welcome to our check-in app!"
sleep(1)
puts "What's your name?"
sleep(1)
end



def check_in(check_new_user)
    user_name = gets.strip.capitalize
    puts "Hi #{user_name}, are you a new user?"
    check_new_user = gets.strip.downcase
 if check_new_user == "yes"
    # create a new empty guest array 
    client_group = []
    # add the user to the guest array
    client_group << user_name
    # returne the index number for the guest
    random_number = client_group.length
    # let them know if their number is 8, 18, 28,38, they will get congratulation message.
    # if not 8,18,28,38, just return the random number and ask them weather or not play toss game
    puts "Thanks #{user_name}, #{random_number} is your random number, would you like to play toss game?"
#return a random number to client. 
    play_toss = gets.strip.capitalize
#if yes, display the menu, if no, exit program.
    if play_toss == "Yes"
        puts "play the game"
        else puts "No worries, thanks for check-in."
             puts "Have fun."
    end
 elsif check_new_user == "no"
    puts "Aha, I will try to remember you next time!"
    sleep(1)
    puts "Now, Would you like to play toss coin game with me?"
    #asking user to input play or not.
    play_toss = gets.strip.capitalize
       if play_toss == "Yes"
        #print menu"
        puts "Wow! Let's play!"
        sleep(1)
        while true
        puts "Press 1), toss 1 time."
        puts "Press 2), toss 3 times."
        puts "Press 3), toss 5 times."
        puts "Press 4), exit the game."
        menu_input = gets.chomp.to_i
           case menu_input
           when 1 
            puts "toss coin once."
           when 2
            puts "toss coin thrice"
           when 3
            puts "toss coin five times" 
           when 4
            
            puts "Thanks! good bye!"
            break
           end
       end
       else puts"Thanks, hope you have a great day!"
       end
    else puts " Please enter yes or no: "
  end
end #for def


greeting
check_in ()
