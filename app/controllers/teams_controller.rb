class TeamsController < ApplicationController

  def index
    @team = Team.all
  end

  def create
    @team = Team.new(team_params)
    if @team.save
      redirect_to @team, notice: "Team was successfully created."
    else
      render :new
    end
  end

  def new
    @team = Team.new
  end

  private

  def team_params
    params.require(:team).permit(:name)
  end 




end  