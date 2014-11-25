class Carrito
	attr_reader :cesta

	def initialize
		@cesta = []
	end

	def anadir_cesta(articulo)
		@cesta << articulo
	end
end