class Donut < ActiveRecord::Base
  belongs_to :designer
  
  validates :flavor, presence: true
end