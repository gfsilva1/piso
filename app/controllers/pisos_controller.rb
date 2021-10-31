class PisosController < ApplicationController
  def index
    @pisos = Piso.all
  end

  def show
    @piso = Piso.find(params[:id])
  end

end
