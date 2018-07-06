require 'date'
$information = { 2001 => {01 => {02 =>  [100,200,300]}}}
class OrderAnalysis
#For case statement
  def case_condition
    @count = 1
    loop do
      puts
      print "Select the option:"
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
        analysis_day
      when 3
        print "Give months details:"
        @month,@year = gets.split().map{ |str| str.to_i }
        @date = Date.new(@year,@month)
        analysis_month
      else
        print "wrong input"
      end
    end
  end
#Add a new order for specific date
  def add_order
    if $information.member?(@date.year)
      if $information[@date.year].member?(@date.month)
        if $information[@date.year][@date.month].member?(@date.day)
          $information[@date.year][@date.month][@date.day].push(@amount)
        else
          $information[@date.year][@date.month][@date.day] = []
          $information[@date.year][@date.month][@date.day].push(@amount)
        end
      else
        $information[@date.year][@date.month]={}
        $information[@date.year][@date.month][@date.day]=[]
        $information[@date.year][@date.month][@date.day].push(@amount)
      end
    else
      $information[@date.year] = {}
      $information[@date.year][@date.month] = {}
      $information[@date.year][@date.month][@date.day]=[]
      $information[@date.year][@date.month][@date.day].push(@amount)
    end
  end
#Display details of specific date
  def analysis_day
    $information.each do |year , month|
      month.each do |months , day|
        day.each do |days , values|
          if $information.member?(@date.year)
            if $information[year].member?(@date.month)
              if $information[year][months].member?(@date.day)
                print "Total Order:",$information[year][months][days].length,"\n"
                print "Total Amount:",$information[year][months][days].sum,"\n"
                print "Minimum Order:",$information[year][months][days].min,"\n"
                print "Maximum Order:",$information[year][months][days].max,"\n"
                print "Average order:",$information[year][months][days].sum/$information[year][months][days].length,"\n"
              end
            end
          end
        end
      end
    end
  end
#display details of month
  def analysis_month
    @total_count = 0
    @total_amount = 0
    @min_amount = []
    @max_amount = []
    $information.each do |year , month|
      if $information.member?(@date.year)
        month.each do |months , day|
        if $information[year].member?(@date.month)
          day.each do |days , values|
            @total_count += $information[year][months][days].length
            @total_amount += $information[year][months][days].sum
            @min_amount.push($information[year][months][days].min)
            @max_amount.push($information[year][months][days].max)
          end
          print "Total Order:",@total_count,"\n"
          print "Total Amount:",@total_amount,"\n"
          print "Minimum Order:",@min_amount.min,"\n"
          print "Maximum Order:",@max_amount.max,"\n"
          print "Average Order:",@total_amount/@total_count,"\n"
        end
        end
      end
    end
  end

  def default
    puts "Welcome to AppleShop"
    puts "Today's details"
    puts "--------"
    $information.each do |year , month|
      month.each do |month , day|
        day.each do |day , values|
          print "Total Order:",$information[year][month][day].length,"\n"
          print "Total Amount:",$information[year][month][day].sum,"\n"
          print "Minimum Order:",$information[year][month][day].min,"\n"
          print "Maximum Order:",$information[year][month][day].max,"\n"
          print "Average order:",$information[year][month][day].sum/$information[year][month][day].length,"\n"
        end
      end
    end
  end
end
obj = OrderAnalysis.new
obj.default
obj.case_condition
