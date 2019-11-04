class Jet < ApplicationRecord
  belongs_to :jet_company

  validates :range, presence: true
  validates :model, uniqueness: true
end
