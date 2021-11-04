class PisosController < ApplicationController
  def home
  end

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
    @piso = Piso.new(piso_params)
    @piso.save
    redirect_to pisos_path
  end

  private

  def piso_params
    params.require(:pisos).permit(:nome, :tamanho, :valor)
  end

# def edit
#    @piso = Piso.find(params[:id])
#  end
def piso_params
  params.require(:piso).permit(:title, :body, :photo)
end

end
