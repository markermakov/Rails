arr1 = Array.new
require 'matrix'


row = gets.chomp
arr1.push(row)
while row != ''
  row = gets.chomp
  row.delete(' ')
  arr1.push(row)
  end
arr1.pop()
ch = arr1.count()
ch1 = arr1[0].count(',') + 1
if ch1 == ch
  puts "Матрица #{ch} порядка"
  i =0
  while i<=ch

    arr1[i]= arr1[i].split(',').map(&:to_f)
    i = i+1
  end
  if ch == 2
    val = arr1[0][0] * arr1[1][1] - arr1[1][0] * arr1[0][1]
    
    puts "Детерминант матрицы 2х2 = #{val}"

  end
  mat = Matrix(arr1)
  puts mat
else
  puts 'loh'
end
#begin
#puts arr1.count()
#ch = arr1.count() - 1
#ch1 = arr1[0].count(',') + 1
#if ch1 == ch
#  puts "Матрица #{ch} порядка"
##  while i<= ch

  #  arr1[i]= arr1[i].split(',').map(&:to_f)
  #  i = i+1
  #end
  #a = Matrix[arr1]
  #puts a



#else#
  #puts 'loh'
#end
#end
