# Declaring variables without specifying types
name = "Julia"  # String
age = 10        # Integer
height = 1.75   # Float

# Printing the variables
println("Name: ", name)
println("Age: ", age)
println("Height: ", height)

# Declaring variables with type annotations
name::String = "Julia"
age::Int = 10
height::Float64 = 1.75

# Printing the types of the variables
println("Type of name: ", typeof(name))
println("Type of age: ", typeof(age))
println("Type of height: ", typeof(height))

# Changing the value of a variable
age = 11  # This is allowed because Julia is dynamically typed

# Using the :: operator to enforce a type
# This will throw an error if the value is not of the specified type
age::Int = 12  # Correct usage
# age::Int = "twelve"  # This would cause an error

# Using a union type to allow multiple types
number::Union{Int, Float64} = 42
println("Number: ", number)

number = 3.14  # This is allowed because number can be an Int or a Float64
println("Number: ", number)
