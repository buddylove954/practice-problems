#### CLASS: SHOPPING CART #####
require 'pry'
class ShoppingCart
      attr_reader :items
    def initialize
      @items = []
    end

    def cost(price)
      cost = []
      counter = 0
      while counter < @items.length
      if price.has_key?(@items[counter]) != true
        puts "yes"
        cost << price[@items[counter]]

      end
      counter +=1
    end
    # puts ("%0.2f" % cost.inject(:+))
    puts cost.inspect
    end

    def add(item)
      @items << item
    end

end

####### CLASS: PRICE #########

        class Price
          attr_reader :store_items
                def initialize
        @store_items = {:apples => 10.0,
                      :oranges =>  5.0,
                      :grapes =>  15.0,
                      :banana =>  20.0,
                      :watermelon => 50.0}
                  end
                  
                  def discount
                  end

                  def prices
                    return @store_items
                  end
                  
              end
  #########################################################################            
                      
      test = ShoppingCart.new
      test.add(:apples)
      test.add(:apples)
      test.add(:banana)
      test_price = Price.new
      puts test.items[0].inspect
      actual_price = test_price.prices
      puts actual_price[:apples]
      test.cost(actual_price)