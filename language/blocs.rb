# block with rescue and error information

def devider(a, b)

  begin
    result = a / b
    puts "The result is #{result}"
  rescue => e
    puts "error class: #{e.class}"
    puts "error: #{e}"
    puts "error message: #{e.message}"
  end

end

devider(10, 0)

# simple block with yield (callback like typescript or javascript)

def timesRepeater(times)
  times.each do |time|
    yield(time)
  end
end

timesRepeater([1, 2, 3, 4, 5]) do |time|
  puts "Repeating number: #{time}"
end

# Block with parameters and callback yield
def operate(a, b)
  puts "Result: #{yield(a, b)}"
end

operate(10, 5) { |x, y| x + y }
operate(10, 5) { |x, y| x * y }
