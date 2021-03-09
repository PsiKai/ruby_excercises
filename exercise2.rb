puts "Please enter all items purchased separated by a comma:"

items = gets

cart = items.split(",")

milk = 0
bread = 0
banana = 0
apple = 0

price = 0
discounted_price = 0

cart.each do |food|
  case food
  when "milk"
    milk += 1
  when "bread"
    bread += 1
  when "banana"
    banana += 1
  when "apple"
    apple += 1
  end
end

if milk > 1
  discounted_price += milk * 2.5
end

if bread > 2
  discounted_price += bread * 2
end

price += milk * 3.97
price += bread * 2.17
price += banana * 0.99
price += apple * 0.89

discounted_price += banana * 0.99
discounted_price += apple * 0.89

price = price.round(2)
discounted_price = discounted_price.round(2)

puts ("Total price : $" + discounted_price.to_s)
puts ("You saved $" + (price - discounted_price).to_s + " today.")
