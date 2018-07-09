require 'date'
class OrderAnalysis
  def initialize
    @information = {  '2018': { '7': { '9':  [100,200,400] } } }
    puts "Welcome to AppleShop"
    puts "Today's details"
    puts "--------"

    @date = Date.today
    @flag = "true"
  end

  #For case statement
  def case_condition
    loop do
      puts
      puts "1 Create New Order"
      puts "2 Print Day Details"
      puts "3 Print Month Details"
      print "How may I help you?(1, 2, 3 or quit):"
      case gets.chomp
      when '1'
        print "Create new order:"
        @date,@amount = gets.split().map{ |str| str }
        @amount = @amount.to_i
        @date = Date.strptime(@date, '%d-%m-%Y')
        add_order
      when '2'
        print "Give a day details:"
        @date = gets
        @date = Date.strptime(@date, '%d-%m-%Y')
        @flag = "true"
        analysis
      when '3'
        print "Give months details:"
        @month,@year = gets.split().map{ |str| str.to_i }
        @date = Date.new(@year, @month)
        @flag = "false"
        analysis
      when 'q' || 'quite'
        break
      else
        print "wrong input"
      end
    end
  end

  #Add a new order for specific date
  def add_order
    @date_year = @date.year.to_s.to_sym
    @date_month = @date.month.to_s.to_sym
    @date_day = @date.day.to_s.to_sym
    if @amount > 0
      if @information.member?(@date_year)
        if @information[@date_year].member?(@date_month)
          if @information[@date_year][@date_month].member?(@date_day)
            @information[@date_year][@date_month][@date_day].push(@amount)
          else
            @information[@date_year][@date_month][@date_day] = []
            @information[@date_year][@date_month][@date_day].push(@amount)
          end
        else
          @information[@date_year][@date_month]={}
          @information[@date_year][@date_month][@date_day]=[]
          @information[@date_year][@date_month][@date_day].push(@amount)
        end
      else
        @information[@date_year] = {}
        @information[@date_year][@date_month] = {}
        @information[@date_year][@date_month][@date_day]=[]
        @information[@date_year][@date_month][@date_day].push(@amount)
      end
    else
      puts "Negative value"
    end
  end

  #Display details of specific date
  def analysis
    @date_year = @date.year.to_s.to_sym
    @date_month = @date.month.to_s.to_sym
    @date_day = @date.day.to_s.to_sym
    @total_count = 0
    @total_amount = 0
    @min_amount = []
    @max_amount = []
    @minimum = 0
    @maximum = 0
    @information.each do |year , month|
      month.each do |months , day|
        day.each do |days , values|
          if year == @date_year
            if months == @date_month
              if days == @date_day && @flag == "true"
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
      print "Average Order:",'%.2f'%(@total_amount.to_f/@total_count.to_f),"\n"
  end
end
obj = OrderAnalysis.new
obj.analysis
obj.case_condition
