class Batch < ApplicationRecord

  has_many :students, dependent: :destroy

  validates :batch_number, presence: true
  validates :batch_number, uniqueness: true
  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :batch_number, numericality: {greater_than: 0, message: "must be greater than 0"}
  validate :end_date_after_start_date?

  def end_date_after_start_date?
    if end_date < start_date
      errors.add :end_date, "must be after start date"
    end
  end

  def self.chronological
    Batch.order('batch_number ASC')
  end

end
