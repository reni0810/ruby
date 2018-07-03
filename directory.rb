puts Dir.pwd
Dir.chdir("/home")
puts Dir.pwd
puts Dir.entries("/home/softices-20/tranee/ruby").join(' , ')
Dir.foreach("/home/softices-20/tranee/ruby") do |entry|
   puts entry
end
Dir.mkdir("/home/softices-20/tranee/demo1")
Dir.delete("/home/softices-20/tranee/demo1")
