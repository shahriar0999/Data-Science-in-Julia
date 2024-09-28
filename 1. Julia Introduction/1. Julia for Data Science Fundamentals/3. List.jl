# Define an array (list) of integers
numbers = [1, 2, 3, 4, 5]

# Add a single element to the end of the array
push!(numbers, 6)  # numbers becomes [1, 2, 3, 4, 5, 6]

# Add multiple elements to the end of the array
append!(numbers, [7, 8, 9])  # numbers becomes [1, 2, 3, 4, 5, 6, 7, 8, 9]

# Access a single element (1-based indexing)
first_element = numbers[1]  # 1

# Slice a subarray
slice = numbers[2:4]  # [2, 3, 4]

# Change an element at a specific index
numbers[1] = 10  # numbers becomes [10, 2, 3, 4, 5, 6, 7, 8, 9]

# Delete an element by index
deleteat!(numbers, 1)  # Removes the first element, numbers becomes [2, 3, 4, 5, 6, 7, 8, 9]

# Delete elements by value
filter!(x -> x != 5, numbers)  # Removes all occurrences of 5, numbers becomes [2, 3, 4, 6, 7, 8, 9]

# Concatenate with another array
more_numbers = [10, 11, 12]
combined = [numbers; more_numbers]  # [2, 3, 4, 6, 7, 8, 9, 10, 11, 12]

# Check for existence of an element
exists = 3 in numbers  # true

# Get the length of the array
len = length(numbers)  # 7

# Sort the array
sorted_numbers = sort(numbers)  # [2, 3, 4, 6, 7, 8, 9]

# Get unique elements
unique_numbers = unique(numbers)  # [2, 3, 4, 6, 7, 8, 9]

# Apply a function to each element (broadcasting)
squared_numbers = numbers .^ 2  # [4, 9, 16, 36, 49, 64, 81]
