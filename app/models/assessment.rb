class Assessment < ApplicationRecord
  validates :colour, presence: true
  validates :date, presence: true
  validates :date, uniqueness: true

  belongs_to :student

  def self.order_by_number
    Assessment.order('date ASC')
  end
end
