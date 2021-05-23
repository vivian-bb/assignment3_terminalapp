require_relative "method"
require_relative "toss_coin"
require_relative "goodbye"
client_group = []
 
greeting

while true


   case check_user_name
    when 1
   #push clients to the group and reture clients a number 
   #let them know if their number is 8, 18, 28,38, they will get congratulation message.
   #else, puts the thanks check-in message, reture to the menu.    
        puts "Hi there. Glad to see you #{@user_name}! Let's check your number now."
        puts "Emmmm, your number is..."
        sleep(2)
        puts "random_number"

    when 2 #tossing coin game.
        tossing_coin_loop = true
    while tossing_coin_loop

        tossing_coin_method
        original_result = ["Head", "Tail", "Head", "Tail", "Head", "Tail", "Head","Tail", "Head", "Tail"]
        
        case toss_coins_menu

        when 1 
            count_down
            puts "You got a '#{original_result.shuffle[0]}'"
            return check_user_name

        when 2
            count_down
            puts "You got '#{original_result.shuffle[0]}', '#{original_result.shuffle[1]}', '#{original_result.shuffle[2]}'"
            return menu_input
        when 3
            count_down
            puts "You got '#{original_result.shuffle[0]}', '#{original_result.shuffle[1]}', '#{original_result.shuffle[2]}', '#{original_result.shuffle[3]}', '#{original_result.shuffle[4]}'"
            return menu_input
        when 4
            puts "Type yes to quit"
            quit_choice = gets.chomp.downcase
            break if quit_choice == "yes"
        when 5
            tossing_coin_loop = false
        else
            puts "Invalid input please try again"
        end
    end
    when 3
     goodbye
    end
end