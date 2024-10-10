# 1. Function Composition (chaining functions)
f = x -> x + 2
g = x -> x * 3
composed = f ∘ g  # equivalent to f(g(x))

# 2. Generators (lazy iteration)
function lazy_squares(n)
    return (i^2 for i in 1:n)
end

# 3. Currying (partial application of functions)
function adder(a)
    return b -> a + b
end

# 4. Anonymous function with Do notation
map_result = map(x -> x^2, [1, 2, 3, 4])

# 5. Memoization (caching results of function calls)
const memo = Dict{Int, Int}()
function fib(n)
    if n <= 2
        return 1
    elseif haskey(memo, n)
        return memo[n]
    else
        result = fib(n-1) + fib(n-2)
        memo[n] = result
        return result
    end
end

# Test the functions

# Function composition
println("Composed function result (f(g(5))): ", composed(5))  # f(g(5)) = f(5 * 3) = 5 * 3 + 2 = 17

# Generators
println("Squares of numbers up to 5: ", collect(lazy_squares(5)))  # [1, 4, 9, 16, 25]

# Currying
add_five = adder(5)
println("Add 5 to 10: ", add_five(10))  # 15

# Anonymous function with map
println("Squares using map: ", map_result)  # [1, 4, 9, 16]

# Memoization with Fibonacci
println("Fibonacci of 10: ", fib(10))  # 55
println("Fibonacci of 50 (memoized): ", fib(50))  # much faster due to caching
