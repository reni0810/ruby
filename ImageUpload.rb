class ImageUplode
  def initialize
    print "enter minimum length of image:"
    @length = gets.to_i
  end

  def image
    @num_img = 0
    if @length >0 && @length <10000
      print "Number of image: "
      @num_img = gets.to_i
    end
  end

  def width_height
    @width=[]
    @height=[]
    if @num_img > 0 && @num_img < 100
      for i in 1..@num_img
        print "Enter width and height:"
        @width[i],@height[i]=gets.split(' ').map{|str| str.to_i}
      end
    end
  end

  def validation
    for i in 1..@num_img
      if @height[i] > 0 && @width[i] > 0 && @height[i] < 10000 && @width[i] < 10000
        if @width[i]<@length || @height[i]<@length
          puts "Image not valid"
        elsif @width[i]==@height[i]
          puts "Perfect Image"
        else
          puts "Crop and accept"
        end
      else
        puts "wrong input"
      end
    end
  end
end
obj= ImageUplode.new
obj.image
obj.width_height
obj.validation
