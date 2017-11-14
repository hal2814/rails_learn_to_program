class Course < ApplicationRecord
  has_many :subjects
  validates :title, :presence => true
end
