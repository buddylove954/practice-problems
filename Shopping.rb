class ShoppingCart
  attr_accessor :items

  def initialize
    @items = []
  end

  def add(item)
    @items.push(item)
  end

  def cost
    sum = 0
   @items.each do |i|
    sum += i.price
  end
    return sum
  end
end


  class Item
    attr_reader(:name, :price)

    def initialize(name, price)
      @name = name
      @price = price
    end

    def to_s
      puts "#{@name}: #{@price}"
    end
  end

    class Fruit < Item
      def price
      price = @price
      time = Time.now
      if time.tuesday? || time.sunday?
        price = @price - @price * 0.10
      end
      return price
    end
  end

    class HouseWare < Item
      def price
      price = @price
      if @price >= 100
        price = @price - @price * 0.05
      end
      return price
    end
  end

apple = Fruit.new("apple", 10)
banana = Fruit.new("banana", 10)
cart = ShoppingCart.new
cart.add(apple)
cart.add(apple)

puts cart.cost

# x store items
# x add items
# x discounts
#total price