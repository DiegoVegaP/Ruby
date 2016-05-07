class Animal
	def initialize(animal = nil, sonido = nil)
		@animal = animal
		@sonido = sonido
	end

	def get_animal
		return @animal
	end

	def set_animal(animal)
		@animal = animal
	end

	def get_sonido
		return @sonido
	end

	def set_sonido(sonido)
		@sonido = sonido
	end

	def to_s 
		"El Animal es #{@animal} y hace #{@sonido}\n"
	end
end

mi_animal = Animal.new
mi_animal.set_animal("Perro")
mi_animal.set_sonido("Guau")
print "El Animal es \"#{mi_animal.get_animal} hace #{mi_animal.get_sonido}\"\n"

tu_animal = Animal.new("Gato", "Miau")
puts tu_animal.to_s