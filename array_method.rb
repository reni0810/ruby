x = Array(1..10)
x1 = Array[1,nil,2,5,6,11]
x2 =[x,x1]
x3=["a","b","c"]
y = [ 1, 2, 3 ]
z = [ 4, 5, 6, [7, 8] ]
b = ["y","z",9,10]
a = [[1,2], [3,4], [5,6]]
print "1) print value which is at specific index:   ",x.at(5),"\n"
print "2) print first element:  ",x.first,"\n"
print "3) print last element:  ",x.last,"\n"
print "4) print specific range of element:  ",x.take(4),"\n"
print "5) print after element:  ",x.drop(4),"\n"
print "6) print comman elemnet from two array:  ",x&x1,"\n"
print "7) print n times:  ",x1*2,"\n"
print "8) Add array:  ",x+x1,"\n"
print "9) subtraction array:  ",x-x1,"\n"
print "10) Pushes the given object on to the end of this array:  ",x<<11,"\n"
print "11) compare two array:  ",x<=>x1,"\n"
print "12) compare two array:  ",x==x1,"\n"
print "13) print array:  ",x[1..2],x[3],x[2,4],"\n"
print "14) assoc:  ",x2.assoc(1),"\n"
print "15) bsearch:  ",x.bsearch {|a| a>=3 },"\n"
print "16) clear :  ",x2.clear,"\n"
print "17) map:  ",x.map {|a| a += 2 },"\n"
print "18) combination:  ",x.combination(2).to_a,"\n"
print "19) comapct(remove nil elemnt)",x1.compact!,"\n"
print "20) concat:  ",x.concat([12,13]),"\n"
print "21) count:  ",x.count(2),"\n"
print "22) cycle:  ","\n"
print x1.cycle(2) { |a| puts a },"\n"
print "23) delete:  ",x.delete(13),"\n"
print "24) delete_at:  ",x.delete_at(11),"\n"
print "25) delete_if:  ",x.delete_if {|a| a >= 11 },"\n"
print "26) drop_while:  ",x.drop_while {|a| a < 2 },"\n"
print "27) print each element:  ",x3.each {|a| print a, " - " },"\n"
print "28) each_index:  ",x3.each_index {|a| print a, " - " },"\n"
print "29) check empty:  ",x.empty?,"\n"
print "30) fetch the data:  ",x.fetch(-5),"\n"
print "31) fill the value with specific value:  ",x3.fill("z", 2) ,"\n"
print "32) index:  ",x3.index("b"),"\n"
print "33) make one dimensional array: ",b.flatten ,"\n"
print "34) hash:  ",x.hash,"\n"
print "35) include?:  ",x3.include?("b"),"\n"
print "36) replace array:  ",x3.replace([ "x", "y", "z" ]) ,"\n"
print "37) insert:  ",x3.insert(3, "a"),"\n"
print "38) join the value in array:  ",x3.join,"\n"
print "39) keep_if:  ",x3.keep_if { |a| a =~ /[aeiou]/ },"\n"
print "40) fine legth of array:   ",x.length,"\n"
print "41) permutation:  ",x1.permutation(2).to_a,"\n"
print "42)pop the elements from array:  ",y.pop(1),"\n"
print "43) product:  ",y.product([4,5]),"\n"
print "44) push the element:  ",y.push("d", "e", "f"),"\n"
print "45) repeated_combination:   ",x3.repeated_combination(2).to_a ,"\n"
print "46) reverse array:  ",x.reverse,"\n"
print "47) reverse_each",x.reverse_each {|a| print a, " " },"\n"
print "48) rotate: ",x.rotate(2),"\n"
print "49)choose random number: ",x.sample(4),"\n"
print "50) select specific number: ",x.select { |num|  num.even?  },"\n"
print "51) delete the element: ",y.shift(2),"\n"
print "52) shuffle:  ",x.shuffle,"\n"
print "53)slice(delete elemnt):  ",x.slice(1),"\n"
print "54) shorting:  ",x1.sort,"\n"
print "55) take_while:  ",x.take_while { |a| a < 3 },"\n"
print "56) collect rows and cols(transpose):  ",a.transpose,"\n"
print "57) uniq:  ",[1,2,3,1,2,3].uniq,"\n"
print "58) unshift(add element): ",x.unshift(0),"\n"
print "59) values_at:",b.values_at(1, 3),"\n"
print "60) zip:  ",y.zip([4,5,6],[1]),"\n"
print "61) convert in hash:  ",[[1,2]].to_h,"\n"
print "62) pack:  ",["reni","patel"].pack("a3a3"),"\n"