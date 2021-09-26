class MatchesController < ApplicationController

  def index
    @match = Match.all
  end
  
  
  def show
    @match = Match.find(params[:id])
  end


  def new
    @match = Match.new   
  end



end 