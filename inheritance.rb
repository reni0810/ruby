class Student
  def initialize(name,sub1,sub2)
    @name = name
    @sub1 = sub1
    @sub2 = sub2
  end
end
class Total < Student
  def count_total
    @total = @sub1 + @sub2
    print "Total marks is ",@total,"\n"
  end
end
class Details < Student
  def status
    print @name ," is good in study","\n"
  end
end
obj = Total.new("reni",10,20)
obj.freeze
obj1 = Details.new("reni",10,20)
obj1.status
obj.count_total
