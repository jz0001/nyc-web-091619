class Donut < ActiveRecord::Base
  validates :flavor, presence: true

end