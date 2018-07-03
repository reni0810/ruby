$global_variable = 10
class Variable
  VAR = 40
  @@class_variable = 20
  def initialize(name)
    @instant_variable = name
  end
  def xyz
    puts @instant_variable
    puts @@class_variable
    puts $global_variable
    puts VAR
  end
end
display = Variable.new("Reni")
display.xyz
