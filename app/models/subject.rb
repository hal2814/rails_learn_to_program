class Subject < ApplicationRecord
  belongs_to :course
  has_many :lessons
  validates :title, :presence => true
  validates :week, :presence => true
end
