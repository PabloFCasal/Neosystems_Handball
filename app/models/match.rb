class Match < ApplicationRecord
  validate :end_date_after_start_date

  private

  def end_date_after_start_date
    return if ended_at.blank? || started_at.blank?

    if ended_at < started_at
      errors.add(:ended_at, "must be after the start date")
    end
 end
end
