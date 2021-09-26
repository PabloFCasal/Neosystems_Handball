module MatchesHelper

  def pretty_score(match)
    local_team_points = match.local_team_points || 0
    visiting_team_points = match.visiting_team_points || 0
    "#{local_team_points} - #{visiting_team_points}"
  end

  def pretty_date_time(datetime)
    if datetime
      datetime.strftime("%d/%m/%Y at %I:%M%p")
    else
      "Pending"
    end
  end

end
