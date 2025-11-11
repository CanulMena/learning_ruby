# Ruby Loop Exercises

# While → repeat until a condition is met
puts "Counting from 1 to 5 with while:"
i = 1
while i <= 5
  puts "Number #{i}"
  i += 1
end

# Until → executes until the condition is true
puts "\nCounting down with until:"
j = 5
until j == 0
  puts "Countdown: #{j}"
  j -= 1
end

# For → iterates over a range or collection
puts "\nUsing for to iterate over a range:"
for n in 1..5
  puts "Iteration #{n}"
end

# Times → repeats a block X times
puts "\nUsing times to repeat something:"
3.times do |n|
  # Note: n starts at 0, so we use n + 1 for the count
  puts "Execution number #{n + 1}"
end

# Each → iterates over a collection (array)
puts "\nUsing each on an array:"
[10, 20, 30].each do |num|
  puts "The number is #{num}"
end

# Crea un programa que:
# Pida un número al usuario.
# Cuente desde 1 hasta ese número.
# Muestre "Fizz" si el número es divisible por 3, "Buzz" si es divisible por 5 y "FizzBuzz" si por ambos.
# (Este es el clásico reto FizzBuzz)

puts "\nFizzBuzz Challenge!"

puts "Please enter a number:"
user_input = gets.chomp.to_i

1.upto(user_input) do |num|
  if num % 3 == 0 && num % 5 == 0
    puts "FizzBuzz"
  elsif num % 3 == 0
    puts "Fizz"
  elsif num % 5 == 0
    puts "Buzz"
  else
    puts num
  end
end
