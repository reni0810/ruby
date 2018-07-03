x = {1=>"a",2=>"b",3=>"c"}
x.default = "d"
x1 = {"a"=>1,"b"=>2,"c"=>3 ,"d"=>nil}
x3={1=>"a",2=>"b",3=>"c",4=>"d"}
x2 =Hash.new('hi')
x2[2]="a"
x4 ={1=>[1,2,3],2=>[4,5,6]}
print "1) convert in uppercase:  ",x[1].upcase,"\n"
print "2) check equality:  ",x==x3,"\n"
print "3) give default vale:  ",x2[4],"\n"
print "4) hash is subset of other or not:  ",x<x3,"\n"
print "5) hash is subset of other or not:  ",x3>x,"\n"
print "6) check key:  ",x.key("a").equal?(1),"\n"
print "7) assoc:  ",x4.assoc(2),"\n"
print "8) clear hash:  ",x4.clear,"\n"
print "9) delete nil value:  ",x1.compact!,"\n"
print "10) default:  ",x2.default(1),"\n"
x2.default_proc = proc do |hash, key|
  hash[key] = key + key
end
print "11) default_proc:   ",x2[4],"\n"
print "12) delete key: ",x2.delete(4),"\n"
print "13) delete_if:  ",x.delete_if {|key,value| key>=3},"\n"
print "14) each:  \n"
x.each {|key, value| puts "#{key} is #{value}" }
print "15) each_key:  \n"
x.each_key {|key| puts key }
print "16) each_value:  \n"
x.each_value {|value| puts value }
print "17) empty or not:  ",x.empty?,"\n"
print "18) equal:  ",x.eql?(x1),"\n"
print "19) fetch the value:  ",x.fetch(1),"\n"
print "20) fetch the values:  ",x.fetch_values(1, 2), "\n"
print "21) make one dimensional:  ",x.flatten ,"\n"
print "22) check hash has a key or not?:  ",x.has_key?(1),"\n"
print "23) check hash has a value or not?:  ",x.has_value?(1),"\n"
print "24) return hash as a string: ",x.to_s,"\n"
print "25) invert key and value:  ",x.invert,"\n"
print "26) get all keys of hash:  ",x.keys,"\n"
print "27) find length:  ",x.length,"\n"
print "28) check hash has key?:  ",x.member?(1),"\n"
print "29) merge two hash:  ",x.merge(x1),"\n"
print "30) find specific key using value(rassoc):  ",x.rassoc("b") ,"\n"
a = [ 1, 2 ]
c = [ 3, 4 ]
h = { a => 100, c => 300 }
a[0]=5
print "31) recreate hash:  ",h.rehash,"\n"
print "32) reject: ",x.reject{|k,v| k < 2},"\n"
print "33) replace hash:  ",x.replace({1=>"a",2=>"b",3=>"c"}),"\n"
print "33) select:  ",x.select {|k,v| k > 1},"\n"
print "35) delete first key and value:  ",x.shift ,"\n"
print "36) find size of hash:  ",x.size,"\n"
print "37) get specific key and value:  ",x.slice(2), "\n"
print "38) add key and value in end of the hash:  ",x.store(0, "z"),"\n"
print "39) convert in array:  ",x.to_a,"\n"
print "40) write hash:  ",x.to_h,"\n"
print "41) transform_keys:  ",x.transform_keys! {|k| k.to_i },"\n"
print "42) change the values:  ",x1.transform_values {|v| v * v  },"\n"
print "43) merge two hash:  ",x3.update(x1),"\n"
print "44) check value is present or not?:  ",x.value?("b"),"\n"
print "45) print all values of hash:  ",x.values,"\n"
print "46) values_at:  ",x.values_at(0,2),"\n"
