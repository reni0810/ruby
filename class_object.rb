class Student
  AGE = 15
  def initialize(number , name , standard)
    @number=number;
    @name=name;
    @standard=standard;
  end
  def print
    puts "Number :#@number"
    puts "Name :#@name"
    puts "Standard:#@standard"
    puts "Age: #{AGE}"
  end
  def status(student_status)
    @student_status = student_status
    puts @student_status
  end
end
detail = Student. new("1" ,"reni", "10")
detail.print
detail.status("good")
