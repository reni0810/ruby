class Demo
  def abc
    puts "hi am in demo"
  end
end
class Demo1 < Demo
  def abc
    puts "hi am in demo1"
  end
end
obj = Demo1.new
obj.abc
