array = [1,2,3,4,5]
array.each do |i|
  puts i
end
array1=Array.new(4,"hi")
puts array1
hash = {"reni" => 20 , "parthvi" => 10 , "snehal" => 15}
hash.each do |key , value|
  print key, " has a ",value," marks\n"
end
puts Hash[1,2,3,4]
puts hash["reni"]
