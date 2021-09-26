class ScreenController < ApplicationController

  def index
    @matches = Match.today_matches
  end

end   