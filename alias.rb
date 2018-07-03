class Demo
  def abc
    puts "hello"
  end
  alias xyz abc
end
class Demo1
  def abc
    puts "hello"
  end
  undef abc
end
Demo.new.xyz
Demo1.new.abc
