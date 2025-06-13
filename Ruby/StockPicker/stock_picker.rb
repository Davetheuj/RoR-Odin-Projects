#--PROJECT DESCRIPTION--
#Implement a method #stock_picker that takes in an array of stock prices, 
#one for each hypothetical day. It should return a pair of days 
#representing the best day to buy and the best day to sell. Days start at 0.

#> stock_picker([17,3,6,9,15,8,6,1,10])
#=> [1,4]  # for a profit of $15 - $3 == $12
#{value:, day:}
def stock_picker(prices)
  best_day = Array.new(2){Hash.new}
  prices.each.with_index() do |buyPrice, buyIndex|
    prices.each.with_index() do |sellPrice, sellIndex|
      next if sellIndex <= buyIndex
      if(buyPrice < sellPrice)
        profit = sellPrice-buyPrice
        if(best_day[0][:value] == nil || profit > best_day[1][:value] - best_day[0][:value])
          best_day[0][:value] = buyPrice
          best_day[0][:day] = buyIndex
          best_day[1][:value] = sellPrice
          best_day[1][:day] = sellIndex
        end
      end     
    end
  end
  puts Array.new([best_day[0][:day], best_day[1][:day]])
end

stock_picker([17,3,6,9,15,8,6,1,10])

stock_picker([11,2,3,4,5,6,7,8,9])