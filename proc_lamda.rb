abc = lambda {puts "hiii"}
abc.call
abc1 = lambda {|x| x+2}
 puts abc1.call(10)
xyz = Proc.new { |a, b| a + b }
puts xyz.call(2, 3)
xyz1 = Proc.new {puts "hello"}
xyz1.call
