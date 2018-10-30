class Perros
	def initialize()
		$index = 0
		$perros = []
	end

	def crear(raza, nombre)
		perro = Perro.new(raza, nombre)
		$perros[$index] = perro
		next_id()
	end

	def eliminar(idE)
		$perros.delete_at(idE)
	end

	def retornar()
		return $perros
	end
	
	private 
	def next_id()
		$index += 1
	end


end
