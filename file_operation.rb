#read file
puts "readfile:"
f1 = File.new("sample.txt","r")
if f1
  data=f1.sysread(20)
  puts data
else
  puts "wrong input"
end
#write and each_byte in files
puts "writefile: and each_byte:"
f1 = File.open("sample.txt","r+")
if f1
  data=f1.syswrite("hello")
  f1.each_byte {|ch| putc ch; putc ?. }
else
  puts "wrong input"
end
#IO.readlines  and IO.foreach method
puts "readline and foreach:"
array = IO.readlines("sample.txt")
puts array[0]
puts array[1]
puts array[2]
puts array[3]
IO.foreach("sample.txt"){|block| puts block}
#rename File
#File.rename( "sample1.txt", "sample.txt" )
#delete File
#File.delete("sample1.txt")
#modes and ownership
f2 = File.new( "test.txt" )
f2.chmod( 0755 )
#inquiry?
f3=File.open("demo.txt") if File::exists?( "demo.txt" )
if f3
  data=f3.sysread(20)
  puts data
else
  puts "wrong input"
end
print "file exit or not:?  " ,                  File.file?( "test.txt" ) ,"\n"
print "given file name is directory or not?:  ",File::directory?("test1.txt"),"\n"
print "Is it readable?:  ",                     File.readable?( "sample.txt" ),"\n"
print "Is it writeable?:  ",                    File.writable?( "sample.txt" ),"\n"
print "Is it executable?:  ",                   File.executable?( "sample.txt" ),"\n"
print "file size is zero?  ",                   File.zero?( "sample.txt" ),"\n"
print "file size is size?  ",                   File.size?( "sample.txt" ),"\n"
print "find out type of file:  ",               File::ftype( "test1.txt" ),"\n"
print "created time:  ",                        File::ctime( "hash_methods.rb" ),"\n"
print "modified time:  ",                       File::mtime( "hash_methods.rb" ),"\n"
print "access time:  ",                         File::atime( "hash_methods.rb" ),"\n"
