# Function II: Advanced Function Concepts in Julia

# 1. Functions with keyword arguments
function introduce(name; age=0, city="unknown")
    println("Name: $name, Age: $age, City: $city")
end

# 2. Recursive functions (Factorial example)
function factorial(n::Int)
    if n == 0
        return 1
    else
        return n * factorial(n - 1)
    end
end

# 3. Higher-order functions (passing functions as arguments)
function apply_function(f, x, y)
    return f(x, y)
end

# 4. Closures (function that captures variables from its environment)
function create_multiplier(factor)
    return x -> x * factor
end

# 5. Varargs (variable number of arguments)
function sum_all(nums...)
    total = 0
    for num in nums
        total += num
    end
    return total
end

# Test the functions

# Keyword arguments
introduce("Alice", age=25, city="Copenhagen")
introduce("Bob")  # Uses default values

# Recursive function
println("Factorial of 5: ", factorial(5))  # 120

# Higher-order function
println("Apply addition: ", apply_function(+, 7, 3))  # 10
println("Apply multiplication: ", apply_function(*, 7, 3))  # 21

# Closures
times_two = create_multiplier(2)
times_five = create_multiplier(5)
println("3 times two: ", times_two(3))  # 6
println("4 times five: ", times_five(4))  # 20

# Varargs
println("Sum of 1, 2, 3: ", sum_all(1, 2, 3))  # 6
println("Sum of 10, 20, 30, 40: ", sum_all(10, 20, 30, 40))  # 100
