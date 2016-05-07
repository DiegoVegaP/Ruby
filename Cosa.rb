class Cosa

	attr_reader :descripcion
	attr_writer :descripcion

	def initialize(descripcion)
		@descripcion = descripcion
	end

end

tu_cosa = Cosa.new("Esta Bien")
p(tu_cosa)

tu_cosa.descripcion ="Mas o menos"
puts "Descripcion: #{tu_cosa.descripcion}"

tu_cosa.descripcion << ", pero todavia pasa"
puts "Descripcion: #{tu_cosa.descripcion}"