# bloc variables or methonds
a = "I am a global variable"

def show_localVariable(a)
  puts a
end

show_localVariable(a)

$b = "I am a global variable with $"

def show_globalVariable(b)
  puts b
end

show_globalVariable($b)

class VariableExample

  @instance_variable = "I am a normal class variable" # the instance variables only belong to the class object.
  @@class_variable = "I am a class variable"

  def show_instanceVariable
    puts @instance_variable
  end

  def show_classVariable
    puts @@class_variable
  end

end

variable_example1 = VariableExample.new
variable_example1.show_instanceVariable # this method won't print anything because the instance variable is not defined for the instance object.
variable_example1.show_classVariable

class VariableExample2
  def initialize(variable1)
    @instance_variable2 = variable1
  end

  def show_instanceVariable2
    puts @instance_variable2
  end

  def show_interpolation_instaceVariable
    puts "The interpolation instance variable is: #{@instance_variable2}"
  end
end

variable_example2 = VariableExample2.new("I am an instance variable assigned via constructor")
variable_example2.show_instanceVariable2
variable_example2.show_interpolation_instaceVariable
