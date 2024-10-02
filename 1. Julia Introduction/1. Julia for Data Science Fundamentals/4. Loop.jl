# Example of a `for` loop
println("For Loop Example:")

# Loop through a range of numbers (1 to 5)
for i in 1:5
    println("Iteration number: $i")
end

# Loop through an array
colors = ["red", "green", "blue"]

for color in colors
    println("Color: $color")
end

# Nested `for` loop
println("\nNested For Loop Example:")
for i in 1:3
    for j in 1:3
        println("i = $i, j = $j")
    end
end

# Example of a `while` loop
println("\nWhile Loop Example:")

# Initialize a counter
counter = 1

# Execute while counter is less than or equal to 5
while counter <= 5
    println("Counter is: $counter")
    counter += 1  # Increment the counter
end

# Example of breaking out of a loop
println("\nBreak in a While Loop Example:")

counter = 1

while true
    println("Counter is: $counter")
    counter += 1
    
    # Break when counter reaches 3
    if counter > 3
        println("Breaking out of the loop at counter = $counter")
        break
    end
end
