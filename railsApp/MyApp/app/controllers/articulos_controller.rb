class ArticulosController < ApplicationController
  def new
    @articulo = Articulo.new
  end

  def create
    @articulo = Articulo.new(articulo_params)
    if @articulo.save
      redirect_to :controller=>'articulos', :action => 'index'
    else
      render 'new'
    end
  end

  def show
    @articulo = Articulo.find(params[:id])
  end

  def index
    @articulos = Articulo.all
  end

  def edit
    @articulo = Articulo.find(params[:id])
  end

  def update
    @articulo = Articulo.find(params[:id])
    if @articulo.update(articulo_params)
      redirect_to :controller=>'articulos', :action => 'index'
    else
      render 'edit'
    end
  end

  def destroy
    @articulo = Articulo.find(params[:id])
    @articulo.destroy
    redirect_to :controller=>'articulos', :action => 'index'
  end

  private
  def articulo_params
    params.require(:articulo).permit(:title, :text)
  end
end
