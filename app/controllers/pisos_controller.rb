class PisosController < ApplicationController
  def index
    @pisos = Piso.all
  end

  def show
    @piso = Piso.find(params[:id])
  end

  def new
    @piso = Piso.new
  end

  def create
    piso = Piso.new(piso_params)
    piso.save
    redirect_to pisos_path
  end

end
