class JetCompany < ApplicationRecord
  has_many :jets, dependent: :destroy


  def fancy_name
    "✈️ #{name} ✈️"
  end
end
