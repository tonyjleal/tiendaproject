
class TiendaController < ApplicationController

  def index
  	@titulo = 'Bienvenido a la tienda de Tony'
  	@articulos = Articulo.mandar_productos
  end

  def quienes
  	@titulo = '¿Quienes somos?'
  end

  def contacto
  	@titulo = 'Contacta con nosotros'
  end

  def anadir_producto
  	@articulo = Articulo.find(params[:id])
  	@carro = sesion_carrito
  	@carro.anadir_cesta(@articulo)
    flash[:notice] = "Artículo [#{@articulo.nombre}] añadido correctamente a la cesta."
  	redirect_to index_path
  end

  def sesion_carrito
  	 session[:carrito] ||= Carrito.new
  end

  def vaciar_cesta
    @carro = session[:carrito] = nil
    flash[:notice] = "Tu cesta se ha vaciado correctamente."
    redirect_to index_path
  end

  def ver_carro
  	@carro = session[:carrito]
  end

end


