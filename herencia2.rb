class Vehiculo
	attr_reader :dueno
	attr_writer :dueno

	attr_reader :puertas
	attr_writer :puertas

	attr_reader :ruedas
	attr_writer :ruedas

	def initialize(dueno = nil, puertas = nil, ruedas = nil)
		@dueno = dueno
		@puertas = puertas
		@ruedas = ruedas
	end

	def caracteristicas
		return "Las Caracteristicas del Vehiculo son..."
	end


end

class Automovil < Vehiculo

	def initialize(dueno = nil, puertas = nil, ruedas = nil, descapotable = nil)
		super(dueno, puertas, ruedas)
		@descapotable = descapotable
	end

	attr_reader :descapotable
	attr_writer :descapotable

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

	attr_reader :tara
	attr_writer :tara

	attr_reader :carga
	attr_writer :carga

	

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