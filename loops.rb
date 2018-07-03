#while
puts "while:"
i=0
while i<10 do
  puts i
  i+=1
end
#while modifier
puts "while modifier:"
i=0
begin
  puts i
  i+=1
end while i<10
#until
puts "until:"
i=0
until i<10 do
  puts i
  i+=1
end
#until modifier
puts "until modifier:"
i=0
begin
  puts i
  i+=1
end until i<10
#for loop
puts "for loop:"
for i in 1..10
  puts i
end
(11..15).each do |i|
  puts i
end
#break statement
puts "break statement:"
for i in 0..5
   if i > 1
      break
   end
   puts i
end
#next statement
puts "next statement:"
for i in 0..5
   if i < 1
      next
   end
   puts i
end
#redo
puts "redo:"
for i in 0..5
   if i < 1
     puts i
     redo
   end
end
