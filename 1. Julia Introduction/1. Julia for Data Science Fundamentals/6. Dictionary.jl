# Creating dictionaries
dict_empty = Dict()
dict_example = Dict("apple" => 3, "banana" => 2, "orange" => 5)

# Adding/Updating entries
dict_example["grape"] = 7
dict_example["banana"] = 10

# Accessing values
println(dict_example["apple"])  # Outputs: 3

# Using get to avoid KeyError
value = get(dict_example, "pineapple", 0)  # Outputs: 0

# Checking existence of a key
println(haskey(dict_example, "apple"))  # true
println(haskey(dict_example, "pineapple"))  # false

# Iterating over a dictionary
for (key, value) in dict_example
    println("$key: $value")
end

# Iterating over keys
for key in keys(dict_example)
    println(key)
end

# Iterating over values
for value in values(dict_example)
    println(value)
end

# Deleting a key-value pair
removed_value = pop!(dict_example, "apple")
println(dict_example)  # "apple" will be removed

# Merging two dictionaries
dict1 = Dict("apple" => 3, "banana" => 2)
dict2 = Dict("banana" => 10, "orange" => 5)
merged_dict = merge(dict1, dict2)
println(merged_dict)  # {"apple" => 3, "banana" => 10, "orange" => 5}

# Dictionary with different types of keys and values
mixed_dict = Dict(1 => "one", "two" => 2, 3.14 => "pi")
println(mixed_dict)

# Specifying types for dictionary keys and values
typed_dict = Dict{String, Int}()
typed_dict["one"] = 1
typed_dict["two"] = 2
println(typed_dict)

# Example: Counting word frequencies
words = ["apple", "banana", "apple", "orange", "banana", "apple"]
word_count = Dict{String, Int}()

for word in words
    word_count[word] = get(word_count, word, 0) + 1
end

println(word_count)  
# Outputs: Dict("banana" => 2, "orange" => 1, "apple" => 3)

