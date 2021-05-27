require_relative "method"



#Greeting and ask user name.
welcome_message
greeting

while true


   case check_user_name
    when 1 
        new_user_check
   #push clients to the group and reture clients a number 
   #let them know if their number is 8, 18, 28,38, they will get congratulation message.
   #else, puts the thanks check-in message, reture to the menu.    

    when 2 #tossing coin game.
        tossing_coin_loop = true
    while tossing_coin_loop
        original_result = ["Head", "Tail", "Head", "Tail", "Head", "Tail", "Head","Tail", "Head", "Tail"]
        case tossing_coin_method
        
        when 1 
            count_down
            puts "You got a '#{original_result.shuffle[0]}'"
            sleep(3)
          
        when 2
            count_down
            puts "You got '#{original_result.shuffle[0]}', '#{original_result.shuffle[1]}', '#{original_result.shuffle[2]}'"
            sleep(3)
        when 3
            count_down
            puts "You got '#{original_result.shuffle[0]}', '#{original_result.shuffle[1]}', '#{original_result.shuffle[2]}', '#{original_result.shuffle[3]}', '#{original_result.shuffle[4]}'"
            sleep(3)
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
     good_bye

     break

    else
        puts "Invalid input, please try again.(Input 1~3) "
    end
end
