class CocktailsController < ApplicationController
  def index
    @cocktails = Cocktail.all
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.create(cocktails_param)
    redirect_to cocktails_path
  end

  def show
    @cocktail = Cocktail.find(params[:id])
  end

  private

  def cocktails_param
    params.require(:cocktail).permit(:name)
  end
end
