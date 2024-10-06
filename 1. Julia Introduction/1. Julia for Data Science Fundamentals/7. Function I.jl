# Function basics in Julia

# 1. Simple function with arguments and return
function add(a, b)
    return a + b
end

# 2. Functions without the "return" keyword (implicitly returns the last evaluated expression)
multiply(a, b) = a * b

# 3. Function with default arguments
function greet(name="World")
    println("Hello, $name!")
end

# 4. Function with multiple dispatch (same function name with different argument types)
function describe(x::Int)
    println("$x is an integer.")
end

function describe(x::String)
    println("$x is a string.")
end

# 5. Anonymous function
anon_func = (x, y) -> x - y

# Test the functions
println("Add: ", add(3, 5))  # 8
println("Multiply: ", multiply(4, 6))  # 24
greet()  # Hello, World!
greet("Julia")  # Hello, Julia!
describe(42)  # 42 is an integer.
describe("Functions in Julia")  # Functions in Julia is a string.
println("Anonymous Function: ", anon_func(10, 3))  # 7
