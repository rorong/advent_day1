# Problem 2 of the code of advent day 1
# This problem need to return sum of three
# This approach reads the input file line by line, accumulates the calorie sums for each group, stores them in an array, and then finds the sum of the three largest calorie sums. The final output is the sum of the three largest calorie sums encountered in the file.

total_calorie_elves = [] # An empty array to store the calorie values of the elves
current = 0              # Variable to store the current calorie sum

# Read each line of the file 'input_advent_day1.txt' and iterate over them
File.readlines('input_advent_day1.txt', chomp: true).each do |row|
  if row.empty?         # Check if the current line is empty
    total_calorie_elves.push(current) # Add the current calorie sum to the total_calorie_elves array
    current = 0         # Reset the current calorie sum to 0 for the next group of numbers
    next                # Skip to the next iteration of the loop
  end

  current += row.to_i   # Add the value of the current line (converted to an integer) to the current calorie sum
end

# Sort the total_calorie_elves array in ascending order, take the last 3 elements, and calculate their sum
puts total_calorie_elves.sort.last(3).sum