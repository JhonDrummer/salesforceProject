load 'clases/Perro.rb'
load 'clases/perros.rb'
load 'clases/hash.rb'



puts 1 + 2
puts 1.0 + 2.0
puts 2.0 * 3.0
puts 5.0 - 8.0
puts 9.0 / 2.0

puts "algo" * 4

mi = 5*4
puts mi


=begin
puts "ingrese un número"
var1 = gets.to_i

puts "el número es " + var1.to_s

var2 = 8
var3 = var2

puts var2
puts var3

var2 = 'ocho'
puts var2
puts var3

case var1
	when 1,2..5
		print "kk\n"
	when 6...10
		print "ii\n"
end

if var1 >=18 && par1 < 23
	puts "es mayor de edad, pero no lo suficiente"
elsif var1 >= 24 && var1 < 30

	puts "es jóven aún"
else 
	puts "Es demasiado niño"
end

numeros = [1,6,3,6,8,2,6,8]

puts numeros.sort

puts numeros.uniq

nombres = ['ab','cd','ef','gh','ehg']

nombres.each do |n|
	varN = #n
	puts 

end
=end

#perro = Perro.new('X','Y')

#perro.ladrar

#puts "#{perro.object_id}"

perros = Perros.new

perros.crear('Labrador','Dante')
perros.crear('Beagle','Bruno')
perros.crear('Pastor','Chango')
perros.crear('Chihuahua','Mongo')

for perro in perros.retornar()
	perro.saludar
end

hash = Hash.new
p1 = hash.crearH
puts p1[:nombre]

