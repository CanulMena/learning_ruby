# To practice operators i'll create a calculator that performs basic arithmetic operations.

class Calculator
  def add (a, b)
    puts(a + b)
  end

  def subtract (a, b)
    puts(a - b)
  end

  def multiply (a, b)
    puts(a * b)
  end

  def divide (a, b)
    puts(a / b)
  end

  def remainder (a, b)
    puts(a % b)
  end
end

calculator = Calculator.new

puts(" Select an arithmetic operation:\n 1. Addition\n 2. Subtraction\n 3. Multiplication\n 4. Division\n 5. Remainder\n Press any other key to exit.")

operation_selected = gets.chomp.to_i

if (operation_selected != 5 || operation_selected < 1)
  puts("Exiting the calculator. Goodbye!")
  exit 
end

case operation_selected
when 1
  puts("You selected Addition. Enter two numbers:")
  num1 = gets.chomp.to_f
  num2 = gets.chomp.to_f
  puts("The result is: #{calculator.add(num1, num2)}")
when 2
  puts("You selected Subtraction. Enter two numbers:")
  num1 = gets.chomp.to_f
  num2 = gets.chomp.to_f
  puts("The reult is: #{calculator.subtract(num1, num2)}")
when 3
  puts("You selected Multiplication. Enter two numbers:")
  num1 = gets.chomp.to_f
  num2 = gets.chomp.to_f
  puts("The result is: #{calculator.multiply(num1, num2)}")
when 4
  puts("You selected Division. Enter two numbers:")
  num1 = gets.chomp.to_f
  num2 = gets.chomp.to_f
  puts("The result is: #{calculator.divide(num1, num2)}")
when 5
  puts("You selected Remainder. Enter two numbers:")
  num1 = gets.chomp.to_i
  num2 = gets.chomp.to_i
  puts("The result is: #{calculator.remainder(num1, num2)}")
else
  puts("Invalid selection. Please choose a number between 1 and 5.")
end


