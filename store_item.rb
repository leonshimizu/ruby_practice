# water = {:color => "clear", :price => 2.00, :in_stock => true}
# juice = {:color => "light brown", :price => 3.00, :in_stock => true}
# beer = {:color => "dark brown", :price => 5.00, :in_stock => true}

# water = {color: "clear", price: 2.00, in_stock: true}
# juice = {color: "light brown", price: 3.00, in_stock: true}
# beer = {color: "dark brown", price: 5.00, in_stock: true}


# p "Welcome, here we have water which is #{water[:color]} for the price of $#{water[:price]}."
# p "Welcome, here we have juice which is #{juice[:color]} for the price of $#{juice[:price]}."
# p "Welcome, here we have beer which is #{beer[:color]} for the price of $#{beer[:price]}." 

# class Store 
#   def initialize(color, price, in_stock)
#     @color = color
#     @price = price
#     @in_stock = in_stock
#   end

#   def color
#     @color
#   end

#   def price
#     @price
#   end
  
#   def in_stock
#     @in_stock
#   end

#   def color=(input)
#     @color = input
#   end

#   def price=(input)
#     @price = input
#   end

#   def in_stock=(input)
#     @in_stock = input
#   end
# end

# more efficient way
# class Store 
#   def initialize(color, price, in_stock)
#     @color = color
#     @price = price
#     @in_stock = in_stock
#   end

#   attr_reader :color, :price, :in_stock
  
#   attr_writer :color, :price, :in_stock
# end

# more efficient way
# class Store 
#   def initialize(color, price, in_stock)
#     @color = color
#     @price = price
#     @in_stock = in_stock
#   end

#   attr_accessor :color, :price, :in_stock
# end

# water = Store.new("clear", 2.00, true)
# juice = Store.new("light brown", 3.00, true)
# beer = Store.new("dark brown", 5.00, true)

# p water.color
# p juice.price
# p beer.in_stock

# easier way - don't have to remember where you placed 
class Store 
  def initialize(input_options)
    @color = input_options[:color]
    @price = input_options[:price]
    @in_stock = input_options[:in_stock]
  end

  attr_accessor :color, :price, :in_stock
end

water = Store.new({color: "clear", price: 2.00, in_stock: true})
juice = Store.new({color: "light brown", price: 3.00, in_stock: true})
beer = Store.new({color: "dark brown", price: 5.00, in_stock: true})

p water.color
p juice.price
p beer.in_stock