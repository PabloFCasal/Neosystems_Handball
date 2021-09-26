class MatchesController < ApplicationController

  def index
    @matches = Match.all
  end
  
  def show
    @match = Match.find(params[:id])
  end

  def edit
    @match = Match.find(params[:id])
  end

  def new
    @match = Match.new({local_team_points: 0, visiting_team_points: 0})

  end

  def create
    @match = Match.new(match_params)
    if @match.save
      redirect_to matches_path
    else
      render :new
    end
  end

  def update
      @match = Match.find(params[:id])
      if @match.update(match_params) 
        redirect_to matches_path, notice: 'Match was successfully updated'
      else
        render :edit
      end
  end

  def destroy
    @match = Match.find(params[:id])
    @match.destroy 
    redirect_to matches_path, notice: 'Match was successfully destroyed'
  end

  private

  def match_params
    params.require(:match).permit(:local_team_id, :visiting_team_id, :local_team_points, :visiting_team_points, :started_at, :ended_at)
  end  

end 