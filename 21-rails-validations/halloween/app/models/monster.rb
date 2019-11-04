class Monster < ApplicationRecord
  has_many :victims, dependent: :destroy

  validates :name, presence: true
  validate :name_must_be_capitalized


  private

  def name_must_be_capitalized
    if name.present? && name != name.titleize
      errors.add(:name, "must be capitalized")
    end
  end
end
