puts "hello world"
puts %{Hello world}
puts %q[Hello world]
puts 'hello world'
str = String.new("THIS IS RUBY 2")
str1= String.new("hi")
str2="123"
str3=""
str4="  hello  "
print "1) length of string:  " , str.length ,"\n"
print "2) convert lowercase:  ", str.downcase ,"\n"
print "3) %str :", ("%05d") % str2 ,"\n"
print "4) print multiple time:  ",str*2 ,"\n"
print "5) add 2 string: ", str+str1,"\n"
a="hello"
print "6) add string at the end:  " ,str<<a,"\n"
print "7) comapre two string:  ",str1<=>str,"\n"
print "8) capitalize the string:  ", str1.capitalize,"\n"
print "9) print the string in center:  ", str1.center(14),"\n"
print "10) chomp:  ", str.chomp("RUBY 2hello"),"\n"
print "11) chomp!:  ", str.chomp!("RUBY 2hello"),"\n"
print "12) delete last character:  ", str.chop.chop,"\n"
print "13) concatination:  ", str1.concat(str),"\n"
print "14) count:  ", str.count("I"),"\n"
print "15) delete the character:  ", str2.delete("3"),"\n"
print "16) convert in uppercase: ", str1.upcase,"\n"
print "17) each_byte:  ", str.each_byte {|c| print c, ' ' },"\n"
print "18) each_line:  ",("hello world").each_line(' ') {|s| p s},"\n"
print "19) check string is empty or not:  ",str3.empty?,"\n"
print "20) check eqallit:  ",str.eql?(str3),"\n"
print "21) replace the string: " ,str.gsub("RUBY", "RAILS"),"\n"
print "22) hex:",("0x0a").hex,"\n"
print "23) include or not?:  " ,str.include?("IS"),"\n"
print "24) find the index: ", str.index('H'),"\n"
print "25) index: ",str.index(?S),"\n"
print "26) insert:  ",str.insert(5,'R'),"\n"
print "27) add string or pattern in whitespace: ",str.ljust(25,'123'),"\n"
print "28) remove space from left side:  ", str4.lstrip,"\n"
print "29) If there is chnages(lstrip!):  ", str4.lstrip!,"\n"
print "30) remove space from right side:  ", str4.rstrip,"\n"
print "31) If there is chnages(rstrip!):  ", str4.rstrip!,"\n"
print "32) match the pattern:  ", str.match("IS"),"\n"
print "33) add next character or digit:  ", str.succ,"\n"
print "34) Octal:  " , "1234".oct , "\n"
print "35) partition: ",str.partition(' I'),"\n"
print "36) replace the string:  ",str1.replace("hello"),"\n"
print "37) reverse the string:  ",str.reverse,"\n"
print "38) return the last occurence of the string:  ",str.rindex('S'),"\n"
print "39) rpartition: ",str.rpartition('I'),"\n"
print "40) scan the pattern:  ",str.scan(/../) , "\n"
print "41) slice:  " ,str.slice(2..5) ,"\n"
print "42) split:  ", str.split(//),"\n"
print "43) squeeze:  ",str4.squeeze("l") ,"\n"
print "44) remove space from both side:  ",str4.strip,"\n"
print "45) replace the pattern with given character:  ",str.sub(/[aeiou]/, '*') , "\n"
print "46) swapcase:  ",str.swapcase,"\n"
print "47) to_f: ",("12.32a").to_f,"\n"
print "48) to_i: ",("12.32a").to_i,"\n"
print "49) to_s: ",("12.32a").to_s,"\n"
print "50) to_r: ",("12.32").to_r,"\n"
print "51) replace the pattern with value(tr):  ",str.tr('aeiouAEIOU','*'),"\n"
print "52) replace the pattern with value and remove duplicate(tr_s):  ",str.tr_s('l','*'),"\n"
print "53) upto:  ",("a").upto("k").to_a,"\n"
print "54) hash: ",str.hash,"\n"
print "55) unpack:  ",str.unpack("a2a2a2"),"\n"
