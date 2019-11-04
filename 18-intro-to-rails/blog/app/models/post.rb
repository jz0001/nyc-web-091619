class Post < ApplicationRecord
  validates :author, presence: true
end
