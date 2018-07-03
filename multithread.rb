def abc
  for i in 1..3
    puts "In abc"
    sleep(2)
  end
end
def xyz
  for i in 1..3
    puts "In xyz"
    sleep(1)
  end
end
t1= Thread.new{abc()}
t2= Thread.new{xyz()}
t1.join
t2.join
