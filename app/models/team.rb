class Team < ApplicationRecord

  has_many :local_matches, class_name: "Match", foreign_key: "local_team_id"
  has_many :visiting_matches, class_name: "Match", foreign_key: "visiting_team_id"
  
  validates :name, presence: true, uniqueness: true

  def can_be_destroyed?
    
    local_matches.empty? && visiting_matches.empty?

  end

end
