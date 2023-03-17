class CheesesController < ApplicationController

  def index
    cheeses = Cheese.all
    render json: cheeses
  end

 def show
  #find a cheese using an id from a url
  cheese = Cheese.find_by(id: params[:id])
  #sending a json response using that cheese object
  render json: cheese
 end 

end
