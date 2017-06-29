class Assessment < ApplicationRecord
  validates :colour, presence: true
  validates :date, presence: true

  belongs_to :student
end
