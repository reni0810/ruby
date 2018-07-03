a=10
b=20
#arithmetic operator
print "a+b: ", a+b , "\n"
print "a-b: ", a-b , "\n"
print "a*b: ", a*b , "\n"
print "a/b: ", a/b , "\n"
print "a%b: ", a%b , "\n"
print "a**b: ", a**b , "\n"
#comparison operator
if(a==b)
  puts "a==b : Both are same"
end
if(a!=b)
  puts "a!=b : Both are not same"
end
if(a<b)
  puts "a<b : b is large"
end
if(a>b)
  puts "a>b :a is large"
end
print "a<=>b :", (a<=>b),"\n"
print "range :",((1..5)===5),"\n"
print "(a.eql?b) :",(a.eql?b),"\n"
#assignment  operator
b+=a
print "b=b+a :",b, "\n"
b-=a
print "b=b-a :",b, "\n"
b*=a
print "b=b*a :",b, "\n"
b/=a
print "b=b/a :",b, "\n"
b%=a
print "b=b%a :",b, "\n"
b**=a
print "a=a**b :",a, "\n"
a,b,c = 10,20,30
puts a,b,c
#bitwise operator
print "a&b:",(a&b),"\n";
print "a|b:",(a|b), "\n";
print "a^b:",(a^b), "\n";
print "~a:",(~a), "\n";
print "a<<1:",(a<<1), "\n";
print "a>>1:",(a>>1), "\n";
#logical operator
a=10
b=20
print "a<5 and b>10 :",(a<5 and b>10),"\n"
print "a<5 or b>10 :",(a<5 or b>10),"\n"
print "a<5 && b>10 :",!(a<5 && b>10),"\n"
print "a<5 || b>10 :",not(a<5 || b>10),"\n"
#ternary operator
print "a>5?5:10 :",a>5?5:10 ,"\n"
#range operator
puts "(1..10)"
(1..10).each do |n|
  print " ",n,"\n"
end
puts "(1...10)"
(1...10).each do |n|
  print " ",n,"\n"
end
#defined? operator
puts defined? a
# :: operator
puts ":: operator" 
A=30
class Abc
  A=10
  ::A=20
end
puts A
puts Abc::A
