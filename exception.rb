#demo1
a=10
b=0
begin
  c=a/b
  puts c
rescue ZeroDivisionError => e
  print "exception class:  ",e.class.name,"\n"
  print "exception message:  ",e.message,"\n"
  b=5
  retry
end
puts "done"
#demo2
begin
  puts x
rescue NameError => e
  print e.class.name,"\n"
  print e.message,"\n"
end
#demo3
begin
  puts "enter a:"
  a=gets.to_i
  puts "enter b:"
  b=gets.to_i
  if b>0
    puts a/b
  else
    raise ZeroDivisionError
  end
rescue ZeroDivisionError => e
  puts "wrong input:"
  puts e.message
  retry
else
  puts "correct input"
ensure
  puts "always run"
end
#catch and throw
def negative_number (number)
    puts "start"
    throw :negativeNumberError if number < 0
    puts "positive Number"
end
catch :negativeNumberError do
    negative_number(2)
    negative_number(-5)
end
#class exception
class MyCustomError < StandardError
  attr_reader :object
  def initialize(object)
    @object = object
  end
end
begin
  puts "enter object:"
  object=gets
  raise MyCustomError.new(object)
rescue MyCustomError => e
    puts e.object
end
