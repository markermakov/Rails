
# encoding: utf-8
a = gets.to_i
b = gets.to_i
c = gets.to_i
# ввод переменных и рассчет

d = (b * b) - (4*a*c)
x1 = ((-b) + ((b*b)-(4*a*c))**0.5)/(2*a)
x2 = ((-b) - ((b*b)-(4*a*c))**0.5)/(2*a)

if d > 0
    puts "discr = #{d}"
    puts " x1 = #{x1},  x2 = #{x2}"
elsif d == 0
    puts "discr = #{d}"
    puts "x = #{x1}"
elsif 0 > d
    puts "discr = #{d}"
    puts "net korney"
else
    puts "error"
end
