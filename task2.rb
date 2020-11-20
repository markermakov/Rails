arr1 = Array.new
require 'matrix'

row = gets.chomp
arr1.push(row)
i1 = 0
while i1 != 1
  if row == ''
    i1 = i1 + 1
  end
  row = gets.chomp
  row.delete(' ')
  arr1.push(row)
  end
ch = arr1.count() - 2
ch1 = arr1[0].count(',') + 1
if ch1 == ch
  puts "Матрица #{ch} порядка"
  i =0
  while i<= ch

    arr1[i]= arr1[i].split(',').map(&:to_f)
    i = i+1
  end
  if ch == 2
    val = arr1[0][0] * arr1[1][1] - arr1[1][0] * arr1[0][1]

    puts "Детерминант матрицы 2х2 = #{val}"


  elsif ch >= 3
  arr1.pop()
  arr1.pop()
  mat = Matrix.rows(arr1).determinant
  puts "Детерминант матрицы = #{mat}"
  end
else
  puts 'error'
end
