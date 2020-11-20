uhash = Hash.new()
arr1 = Array.new
uhash.compare_by_identity
puts 'Товар'
thing_t = gets.chomp
thing = "Товар"
uhash[thing.to_sym]
uhash[thing] = thing_t

price = 'Цена'
puts 'Цена'
uhash[price.to_sym]
price_t = gets.chomp.to_f
uhash[price] = price_t

amount = 'Кол-во'
puts 'Кол-во'
uhash[amount.to_sym]
amount_t = gets.chomp.to_f
uhash[amount] = amount_t
puts uhash

puts 'Товар'

thing_t = gets.chomp

while thing_t != 'stop' do
  thing = "Товар"
  uhash[thing.to_sym]
  uhash[thing] = thing_t

  price = 'Цена'
  puts 'Цена'
  uhash[price.to_sym]
  price_t = gets.chomp.to_f
  uhash[price] = price_t

  amount = 'Кол-во'
  puts 'Кол-во'
  uhash[amount.to_sym]
  amount_t = gets.chomp.to_f
  uhash[amount] = amount_t
  puts uhash

  puts 'Товар'
  uhash[thing.to_sym]
  thing_t = gets.chomp
end
puts uhash
