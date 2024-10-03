# Define a list of numbers
numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

# Initialize empty lists for even and odd numbers
even_numbers = []
odd_numbers = []

# Iterate through each number in the list
for num in numbers
    # Check if the number is even
    if num % 2 == 0
        push!(even_numbers, num)  # Add to even_numbers list
    else
        push!(odd_numbers, num)   # Add to odd_numbers list
    end
end

# Print the results
println("Even numbers: ", even_numbers)
println("Odd numbers: ", odd_numbers)
