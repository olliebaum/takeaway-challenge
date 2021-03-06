class Menu
  attr_reader :dishes, :order

  def initialize(dish_class = Dish, order_class = Order)
    @dish_class = dish_class
    @order_class = order_class
    @dishes = []
    @order = @order_class.new

  end

  def add(dish_name, price)
    @dishes << @dish_class.new(dish_name, price)
  end

  def print_list
    @dishes.each_with_index { |dish, i|
      puts "#{i+1}. #{dish.name} - £#{dish.price}"
    }
  end

  def choose(*num_list)
    num_list.each { |num|
      @order << @dishes[num-1]
    }
  end


end
