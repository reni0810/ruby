require 'date'

class OrderAnalysis
  def initialize
    puts "Welcome to AppleShop"
    puts "Today's details"
    puts "--------"
    @information = { 2001 => { 01 => { 02 =>  [100,200,400] } } }
  end

  #For case statement
  def case_condition
    @count = 1
    loop do
      puts
      puts "1 Create New Order"
      puts "2 Print Day Details"
      puts "3 Print Month Details"
      print "How may I help you?(1, 2, 3 or quit):"
      @number = gets.chomp
      if @number == 'q' || @number == 'quite'
        break
      end
      case @number.to_i
      when 1
        print "Create new order:"
        @date,@amount = gets.split().map{ |str| str }
        @amount = @amount.to_i
        @date = Date.strptime(@date, '%d-%m-%Y')
        add_order
      when 2
        print "Give a day details:"
        @date = gets
        @date = Date.strptime(@date, '%d-%m-%Y')
        @flag = "true"
        analysis
      when 3
        print "Give months details:"
        @month,@year = gets.split().map{ |str| str.to_i }
        @date = Date.new(@year, @month)
        @flag = "false"
        analysis
      else
        print "wrong input"
      end
    end
  end

  #Add a new order for specific date
  def add_order
    if @amount > 0
      if @information.member?(@date.year)
        if @information[@date.year].member?(@date.month)
          if @information[@date.year][@date.month].member?(@date.day)
            @information[@date.year][@date.month][@date.day].push(@amount)
          else
            @information[@date.year][@date.month][@date.day] = []
            @information[@date.year][@date.month][@date.day].push(@amount)
          end
        else
          @information[@date.year][@date.month]={}
          @information[@date.year][@date.month][@date.day]=[]
          @information[@date.year][@date.month][@date.day].push(@amount)
        end
      else
        @information[@date.year] = {}
        @information[@date.year][@date.month] = {}
        @information[@date.year][@date.month][@date.day]=[]
        @information[@date.year][@date.month][@date.day].push(@amount)
      end
    else
      puts "Negative value"
    end
  end

  #Display details of specific date
  def analysis
    @total_count = 0
    @total_amount = 0
    @min_amount = []
    @max_amount = []
    @minimum = 0
    @maximum = 0
    @information.each do |year , month|
      month.each do |months , day|
        day.each do |days , values|
          if @flag != "true" && @flag != "false"
            @total_count = @information[year][months][days].length
            @total_amount = @information[year][months][days].sum
            @minimum = @information[year][months][days].min
            @maximum = @information[year][months][days].max
          elsif year == @date.year
            if months == @date.month
              if days == @date.day && @flag == "true"
                puts
                @total_count = @information[year][months][days].length
                @total_amount = @information[year][months][days].sum
                @minimum = @information[year][months][days].min
                @maximum = @information[year][months][days].max
              elsif @flag == "false"
                @total_count += @information[year][months][days].length
                @total_amount += @information[year][months][days].sum
                @min_amount.push(@information[year][months][days].min)
                @max_amount.push(@information[year][months][days].max)
                @minimum = @min_amount.min
                @maximum = @max_amount.max
              end
            end
          end
        end
      end
    end
      puts
      print "Total Order:",@total_count,"\n"
      print "Total Amount:",@total_amount,"\n"
      print "Minimum Order:",@minimum,"\n"
      print "Maximum Order:",@maximum,"\n"
      print "Average Order:",@total_amount.to_f/@total_count.to_f,"\n"
  end
end
obj = OrderAnalysis.new
obj.analysis
obj.case_condition
