class Dummy
  require_relative 'module'
  def Hello
    puts "i am in dummy class"
  end
end
obj1=Dummy.new
obj1.Hello
