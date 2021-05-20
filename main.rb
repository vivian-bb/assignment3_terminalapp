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
user_name = gets.strip.capitalize
puts "Hi #{user_name}, are you a new user?"

end
greeting

check_new_user = gets.strip.downcase
if check_new_user == "yes"
    
    # create a new empty guest array 
    # add the user to the guest array
    # returne the index number for the guest
    # let them know if their number is 8, 18, 28,38, they will get congratulation message.
    # if not 8,18,28,38, just return the random number and ask them weather or not play toss game

puts "Thanks, this is your random number, have fun!"
#return a random number to client. 

else
    puts "Aha, I will try to remember you next time!"
    sleep(2)
    puts "Now, Would you like to play toss coin game with me?"
    #asking user to input play or not.
    play_toss = gets.strip.capitalize
       if play_toss == "Yes"
        #print menu"
        puts "Wow! Let's play!"
        sleep(1)
        puts "Press 1, toss 1 time."
        puts "Press 2, toss 3 times."
        puts "Press 3, toss 5 times."
        puts "Press 4, exit the game."
       else puts"Thanks, hope you have a great day!"
       end
end
