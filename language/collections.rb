# Collection Exercises

# 1. Array — ordered list
fruits = ["apple", "pear", "grape"]

puts "List of fruits:"
fruits.each { |f| puts "- #{f.capitalize}" }

# Common methods
puts "\nNumber of fruits: #{fruits.length}"
puts "First fruit: #{fruits.first}"
puts "Last fruit: #{fruits.last}"

# 2. Hash — key: value
person = { name: "Joel", age: 22, city: "CDMX" }

puts "\nPerson data:"
person.each do |key, value|
  puts "#{key.capitalize}: #{value}"
end

# Add values
person[:occupation] = "Developer"
puts "\nOccupation added: #{person[:occupation]}"

# 3. Range — sequence
puts "\nNumbers from 1 to 5:"
(1..5).each { |n| print "#{n} " }
puts # Add a final newline for clean output


# Display all products with their prices.
# Calculate the total price.
# Add a new product.
# Delete an existing product.

products = { "Laptop" => 20000, "Mouse" => 500, "Keyboard" => 800 }

# We use an infinite 'loop' that only stops with 'break' or 'exit'
loop do

  puts "\n--- PRODUCT MANAGER ---"

  # Menu Options
  puts "\nMENU:"
  puts "1 - Add a new product"
  puts "2 - Delete a product"
  puts "3 - Show all products (always displayed)"
  puts "4 - Show total price" # Assuming this was the intent for the added case
  puts "0 - Exit"
  print "Select an option: "

  userChoice = gets.chomp.to_i

  case userChoice
  when 1
    # Add Product
    puts "\nEnter the product name:"
    product_name = gets.chomp
    puts "Enter the product price:"
    product_price = gets.chomp.to_i
    products[product_name] = product_price
    puts "\nProduct '#{product_name}' added!"

  when 2
    # Delete Product
    puts "\nEnter the product name to delete:"
    product_name = gets.chomp
    if products.key?(product_name)
      products.delete(product_name)
      puts "\nProduct '#{product_name}' deleted!"
    else
      puts "\nProduct not found."
    end

  when 3
    # Show All Products
    puts "\nDisplaying products..."

    products.each do |product, price|
      puts "-> #{product}: $#{price}"
    end

  when 4
    # Show Total Price
    puts "\nTotal Price: $#{products.values.sum}"

  when 0
    # Exit
    puts "\nExiting the program. Goodbye!"
    break

  else
    # Invalid Option
    puts "\nInvalid option. Please select 0, 1, 2, 3, or 4."
  end
end