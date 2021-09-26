class Match < ApplicationRecord

  belongs_to :local_team, class_name: "Team", foreign_key: "local_team_id"
  belongs_to :visiting_team, class_name: "Team", foreign_key: "visiting_team_id"


  MINIMUM_DURATION = 70 #minutes
  MAXIMUM_DURATION = 90 #minutes

  validate :end_date_after_start_date
  validate :team_dont_play_again_itself
  validates :local_team_id, presence: true
  validates :visiting_team_id, presence: true
  validates :local_team_points, inclusion: { in: 0..99 }
  validates :visiting_team_points, inclusion: { in: 0..99 }

  private

  def end_date_after_start_date
    return if ended_at.blank? || started_at.blank?

    if ended_at < started_at
      errors.add(:ended_at, "must be after the start date")
    elsif (started_at + MINIMUM_DURATION.seconds) > ended_at
      errors.add(:ended_at, "must be after the start date more than #{MINIMUM_DURATION} minutes")
    elsif (started_at + MAXIMUM_DURATION.seconds) > ended_at
      errors.add(:ended_at, "must be after the start date less than #{MAXIMUM_DURATION} minutes")
    end
  end

  def team_dont_play_again_itself
    if local_team_id == visiting_team_id
      errors.add(:local_team_id, "must be different from visiting_team_id")
    end
  end
end
