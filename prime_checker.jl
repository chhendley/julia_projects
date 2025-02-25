#accept user input for number
#calculate square root of input
#divide by 2 and all odd numbers up to square root
#print is prime or not

println("enter a whole number to check if it is prime")
input = parse(Int, readline())

function check_prime(num1)
    stop = ceil(sqrt(num1))
    for i in 2:stop
        test = mod(num1, i)
        if test == 0
            println("your number is not prime")
            return
        else
            println("your number is prime")
            return
        end
    end
end

check_prime(input)
