#if-else
a=50
if a<100
  puts "a is less than 100"
  if a<40
    puts "a is less than 90"
  elsif a>20
    puts "a is greater than 20"
  end
else
  puts "a is greter than 100"
end
#if-else modifier
a = 10
print "done\n" if a==10
#unless
unless a>=15
  puts "condition wrong"
else
  puts "condition right"
end
#unless modifier
print "done\n" unless a==10
#case object
case a
when 5
  puts "value of a is 5"
when 10
  puts "value of a is 10"
when 15
  puts "value of a is 15"
else
  puts "wrong input"
end
