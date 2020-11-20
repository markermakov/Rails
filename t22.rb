uhash = Hash.new()
arr1 = Array.new
uhash1 = Hash.new()
uhash.compare_by_identity
uhash1.compare_by_identity
puts 'Товар'

thing_t = gets.chomp

uhash[thing_t.to_sym]

puts 'Цена'
price_t = gets.chomp.to_f



puts 'Кол-во'
amount_t = gets.chomp.to_f



puts 'Итого'
itog = price_t * amount_t

uhash[thing_t] = {'Цена'=> price_t, 'Кол-во'=> amount_t, 'Итого'=>itog}
sum = 0
sum = sum +itog
puts uhash

puts 'Товар'

thing_t = gets.chomp

while thing_t != 'stop' do

  uhash[thing_t.to_sym]

  puts 'Цена'
  price_t = gets.chomp.to_f


  puts 'Кол-во'
  amount_t = gets.chomp.to_f


  puts 'Итого'
  itog = price_t * amount_t

  uhash[thing_t] = {'Цена'=> price_t, 'Кол-во'=> amount_t, 'Итого'=>itog}

  sum = sum + itog

  puts uhash

  puts 'Товар'
  uhash[thing_t.to_sym]
  thing_t = gets.chomp
end
puts 'Все товары, их цены, кол-во:'
puts uhash
puts "Общая выручка = #{sum}"
