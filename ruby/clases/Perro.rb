class Perro
	def initialize(raza, nombre)
		@raza = raza
		@nombre = nombre
	end

	def ladrar
		puts "guau"
	end

	def saludar
		puts "algo #{@raza} y nombre #{@nombre}"  
	end

	def ejemplo
		return 1,2
	end
end
