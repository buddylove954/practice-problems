class ShoppingCart
  
  attr_accessor :item
  @@total = 0
  @@price = []
  @@item = []

  
  def self.total
    sum = 0
    @@price.each { |n| sum += n}
    return sum
  end
  
  def initialize(item, price)
    @@item << item
    @@total = @@total + 1
    @@price << price
  end  
  
  def self.weekend
    sum = 0
    num = 0
    n = 0
    while n < @@item.length
      @@item.each do |i|
      if i == "bananas" || i == "orange juice"
        num += 1
        n += 1
      end
      end
        fruit_total = (num* 10) - ((num * 10) * 0.1)
      @@price.each { |n| sum += n}
        discount = (num * 10) - (num * 10 * 0.05) 
        sum = sum - (num * 10)
        fruit_total = fruit_total + sum
      return fruit_total
    end
  end
  
  def self.discount
    num = 0
    sum = 0
    if @@item.length >= 5
      @@price.each { |i| sum+=i}
      discount = sum - (sum * 0.1)
      
    elsif @@item.length <= 4
      @@price.each do |i|
        if i >= 100
          num += 1
        end
        sum = 0
        @@price.each { |n| sum += n}
        discount = (num * 150) - (num * 150 * 0.05) 
        sum = sum - (num * 150)
        discount = discount + sum
    end
      return discount
  end
  end
    
end


cart = ShoppingCart.new "orange juice", 10
cart = ShoppingCart.new "orange juice", 10
cart = ShoppingCart.new "orange juice", 10
cart = ShoppingCart.new "orange juice", 10
puts ShoppingCart.weekend
puts ShoppingCart.total