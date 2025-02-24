#user input number of dice to roll & number of sides; min of 6
#function dice_roll -> random number 1-number of sides
#number of dice = number of dice_roll fx calls
#score > store all instances of roll_dice in a list; sum list & print to terminal

using Random

println("Enter number of dice to roll")
num_dice = parse(Int, readline())

println("Enter number of sides for each die")
num_sides = parse(Int, readline())

function dice_roll(sides, amount)
    my_list = Int[]
    for i in 1:amount
        random_number1 = rand(1:sides)
        println("Dice number ", i, " is ", random_number1)
        push!(my_list, random_number1)
    end
    return my_list
end

dice_cast = dice_roll(num_sides, num_dice)
total = sum(dice_cast)
println("Your total: ", total)