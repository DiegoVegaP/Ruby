class Vehiculo

	def initialize(dueno = nil, puertas = nil, ruedas = nil)
		@dueno = dueno
		@puertas = puertas
		@ruedas = ruedas
	end

	def caracteristicas
		return "Las Caracteristicas del Vehiculo son..."
	end

	def dueno
		return @dueno
	end

	def puertas
		return @puertas
	end

	def ruedas
		return @ruedas
	end

	def dueno=(dueno)
		@dueno = dueno
	end

	def puertas=(puertas)
		@puertas = puertas
	end
	
	def ruedas=(ruedas)
		@ruedas = ruedas
	end

end

class Automovil < Vehiculo

	def initialize(dueno = nil, puertas = nil, ruedas = nil, descapotable = nil)
		super(dueno, puertas, ruedas)
		@descapotable = descapotable
	end
	
	def descapotable
		return @descapotable
	end

	def descapotable=(descapotable)
		@descapotable = descapotable
	end

	def subir
		puts "Subiendo al Automovil"
	end

	def bajar
		puts "Bajando del Automovil"
	end

end

class Camioneta < Vehiculo

	def initialize(dueno = nil, puertas = nil, ruedas = nil, tara = nil, carga = 0)
		super(dueno, puertas, ruedas)
		@tara = tara
		@carga = carga
	end

	def tara
		return @tara 
	end

	def carga
		return @carga 
	end

	def tara=(tara)
		@tara = tara
	end

	def carga=(carga)
		@carga = carga
	end

	def cargar(kilos)
		@carga+=kilos
	end
end 
mi_auto = Automovil.new("Juan Perez", 5, 4, false)
p(mi_auto)

mi_camoneta = Camioneta.new("Maria Sanchez", 2, 4, 1000, 0)
mi_camoneta.cargar(200)
puts "La Camioneta Tiene una Carga de #{mi_camoneta.carga} Kilos\n"


mi_camoneta.cargar(300)
puts "La Camioneta Tiene una Carga de #{mi_camoneta.carga} Kilos"

mi_camoneta.tara = 3000
puts "La Tara de Mi Camioneta es #{mi_camoneta.tara}"