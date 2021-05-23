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
        original_result = ["Head", "Tail", "Head", "Tail", "Head", "Tail", "Head","Tail", "Head", "Tail"]
        random_number = original_result.shuffle 
        case menu_input
           when 1 
            puts "You got a #{random_number[0]}."
            sleep(2)
            system "clear"

           when 2
            puts "You got #{random_number[0]}, #{random_number[1]} and #{random_number[2]}"
            sleep(2)
            system "clear"      
           when 3
            puts "You got #{random_number[0]}, #{random_number[1]}, #{random_number[2]}, #{random_number[3]}.#{random_number[4]}"
            sleep(2)
            system "clear"  
           when 4
            
            puts "Thanks! good bye!"
            system "clear"
            break
           else puts "That's invalid input. Let's try again."
           
            sleep(2)
            system "clear"
            menu_input
           end
       end
       else puts"Thanks, hope you have a great day!"
       end
    else puts "invalid input, please enter yes or no: "
  end
end #for def


greeting
check_in ()
