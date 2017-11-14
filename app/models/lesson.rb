class Lesson < ApplicationRecord
  belongs_to :subject
  validates :title, :presence => true
end
