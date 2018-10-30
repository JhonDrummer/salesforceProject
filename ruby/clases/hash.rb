class Hash
	def crearH
		persona = Hash.new
		persona[:nombre] = 'Pedro'
		persona[:apellido] = 'Picapiedra'

		return persona
	end

	def crear
		return persona = {:nombre => 'Pedro', apellido => 'Pica'}
	end

	def crearPersona(nombre, apellido)
		return persona = {:nombre => nombre, :apellido => apellido}
	end
end
