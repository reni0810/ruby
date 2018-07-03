module Demo
  def Demo.abc
    puts "hi am module 1"
  end
end
module Demo1
  def Demo1.abc1
    puts "hi am module 2"
  end
end
class Demo2
  include Demo
  include Demo1
    def abc2
      puts "I am in class"
    end
end
obj=Demo2.new
obj.abc2
Demo.abc
Demo1.abc1
