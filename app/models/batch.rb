class Batch < ApplicationRecord

  validates :batch_number, presence: true
  validates :batch_number, uniqueness: true
  validates :start_date, presence: true
  validates :end_date, presence: true

  has_many :students
end
