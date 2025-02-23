print("Enter your input: ")
input_string = readline()
input = split(input_string)

function is_number_or_operator(x)
    # Check if x is a number
    isnumeric = tryparse(Float64, x) !== nothing
    # Check if x is a mathematical operator
    isoperator = x in ["+", "-", "*", "/"]
    return isnumeric || isoperator
end

# Filter the list
filtered_list = filter(is_number_or_operator, input)

if length(filtered_list) != 3
    println("Please enter exactly three elements: number, operator, number")
    exit()
end

if tryparse(Float64, filtered_list[1]) !== nothing
    num1 = parse(Float64, filtered_list[1])
else
    println("Please enter a number as your first input.")
    exit()
end

valid_operators = ["+", "-", "*", "/"]

if filtered_list[2] in valid_operators
    op1 = Dict("+" => +, "-" => -, "*" => *, "/" => /)[filtered_list[2]]
else 
    println("Please enter one of the following: + - * /")
    exit()
end

if tryparse(Float64, filtered_list[3]) !== nothing
    num2 = parse(Float64, filtered_list[3])
else
    println("Please enter a number as your third input.")
    exit()
end

result = op1(num1, num2)
println("Result: ", result)
