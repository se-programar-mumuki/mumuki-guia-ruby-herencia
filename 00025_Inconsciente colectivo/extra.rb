class MedioDeTransporte
	def initialize(combustible)
		#<elipsis-for-student@
		@combustible = combustible
		#@elipsis-for-student>
	end

	def cargar_combustible!(combustible)
		#<elipsis-for-student@
		@combustible += combustible
		#@elipsis-for-student>
	end

	def entran?(pasajeros)
		#<elipsis-for-student@
		self.maximo_personas >= pasajeros
		#@elipsis-for-student>
	end

	def maxi_personas
		#<elipsis-for-student@
		@maximo_personas
		#@elipsis-for-student>
	end
end

class Auto < MedioDeTransporte
	def maximo_personas
		#<elipsis-for-student@
		5
		#@elipsis-for-student>
	end

	def recorrer!(kilometros)
		#<elipsis-for-student@
		@litros -= kilometros / 2
		#@elipsis-for-student>
	end
end

class Moto < MedioDeTransporte
	def maximo_personas
		#<elipsis-for-student@
		2
		#@elipsis-for-student>
	end

	def recorrer!(kilometros)
		#<elipsis-for-student@
		@litros -= kilometros
		#@elipsis-for-student>
	end
end

