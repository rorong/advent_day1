# Problem 1 of the code of advent day 1
# This solution need to return maximum calories carried by an elf
# In this approach we ensure that we process each group of numbers separately, keeping track of the largest sum encountered so far.


largest = 0 # variable to store the largest sum encountered so far
current = 0 # variable to store the current sum

# Read each line of the file 'input_advent_day1.txt' and iterate over them
File.readlines('input_advent_day1.txt', chomp: true).each do |row|
  if row.empty?    # Check if the current line is empty
    largest = current if current > largest   # If the current sum is larger than the largest sum encountered so far, update the largest sum
    current = 0    # Reset the current sum to 0
    next           # Skip to the next iteration of the loop
  end
 
  current += row.to_i # Add the value of the current line (converted to an integer) to the current sum
end

puts largest          # Output the largest sum encountered
