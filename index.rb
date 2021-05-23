client_group = []

while true
    # when the program starts, greeting
   puts "Hi there!"
   sleep(1)
   puts "Welcome to our check-in app!"
   sleep(1)
   puts "What's your name?"
   sleep(1)
   #take input from user
   user_name = gets.strip.capitalize
   puts "Hi #{user_name}, nice to meet you!"
   sleep(2)
   puts "Press 1) to Check-in, if you are new user."
   puts "Press 2) to play a toss coin game, if you already check-in yourself."
   puts "Press 3) to exit the program."

   #take input from user
   menu_input = gets.chomp.to_i

   case menu_input
    when 1
   #push clients to the group and reture clients a number 
   #let them know if their number is 8, 18, 28,38, they will get congratulation message.
   #else, puts the thanks check-in message, reture to the menu.    
        puts "Hi there. Glad to see you #{user_name}! Let's check your number now."
        puts "Emmmm, your number is..."
        sleep(2)
        puts "random_number"

    when 2 #tossing coin game.
        puts "Let's play toss coin game, how many time's you would like to toss?"
        sleep(2)
        puts "Press 1), toss 1 time."
        puts "Press 2), toss 3 times."
        puts "Press 3), toss 5 times."
        puts "Press 4), exit the game."
        puts "Press 5), back to the menu."
        #ask user input data
        toss_coins_menu = gets.chomp.to_i
        original_result = ["Head", "Tail", "Head", "Tail", "Head", "Tail", "Head","Tail", "Head", "Tail"]
        case toss_coins_menu
        when 1 
            puts "Start"
            sleep(2)
            puts "3"
            sleep(1)
            puts "2"
            sleep(1)
            puts "1"
            sleep(1)
            puts "You got a '#{original_result.shuffle[0]}'"
            return menu_input


        when 2
            puts "Start"
            sleep(2)
            puts "3"
            sleep(1)
            puts "2"
            sleep(1)
            puts "1"
            sleep(1)
            puts "You got '#{original_result.shuffle[0]}', '#{original_result.shuffle[1]}', '#{original_result.shuffle[2]}'"
            return menu_input
        when 3
            puts "Start"
            sleep(2)
            puts "3"
            sleep(1)
            puts "2"
            sleep(1)
            puts "1"
            sleep(1)
            puts "You got '#{original_result.shuffle[0]}', '#{original_result.shuffle[1]}', '#{original_result.shuffle[2]}', '#{original_result.shuffle[3]}', '#{original_result.shuffle[4]}'"
            return menu_input
        when 4
        when 5
        end

    when 3
        puts "Thanks! good bye!"
        system "clear"
        break
    end
end