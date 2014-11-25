class Articulo < ActiveRecord::Base

	def self.mandar_productos
		all.order('nombre')
	end

end
