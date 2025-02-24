using Random

function play(user_choice)
    choice_dict = Dict{Int, String}(
        1 => "rock",
        2 => "paper",
        3 => "scissors"
    )
    comp_choice = rand(1:3)
    if user_choice == 1 && comp_choice == 3 ||
       user_choice == 2 && comp_choice == 1 ||
       user_choice == 3 && comp_choice == 2
        println("You win! The computer played ", choice_dict[comp_choice])
    elseif user_choice == comp_choice
        println("You tied! You both chose ", choice_dict[comp_choice])
    else
        println("You lose! The computer played ", choice_dict[comp_choice])
    end
end

function get_valid_choice()
    while true
        println("Enter 1 for Rock, 2 for Paper, 3 for Scissors")
        choice = tryparse(Int, readline())
        if choice in [1, 2, 3]
            return choice
        else
            println("Invalid input. Please try again.")
        end
    end
end

function play_again()
    while true
        println("Do you want to play again? (y/n)")
        response = lowercase(strip(readline()))
        if response in ["y", "n"]
            return response == "y"
        else
            println("Invalid input. Please enter 'y' for yes or 'n' for no.")
        end
    end
end

# Main game loop
while true
    choice = get_valid_choice()
    play(choice)
    
    if !play_again()
        println("Thanks for playing!")
        break
    end
end
