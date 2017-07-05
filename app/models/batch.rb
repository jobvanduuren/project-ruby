class Batch < ApplicationRecord

  has_many :students, dependent: :destroy

  validates :batch_number, presence: true
  validates :batch_number, uniqueness: true
  validates :start_date, presence: true
  validates :end_date, presence: true


end
