class Victim < ApplicationRecord
  belongs_to :monster
  validates :name, presence: true
  validate :name_must_be_capitalized

  private

  def name_must_be_capitalized
    if name.present? && name != name.capitalize
      errors.add(:name, "must be capitalized")
    end
  end
end
