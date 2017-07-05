class Student < ApplicationRecord
  belongs_to :batch
  has_many :assessments, dependent: :destroy

  validates :first_name, presence: true
  validates :surname, presence: true

  validates :image_url, length: { maximum: 400 }, allow_blank: true



  def self.chronological
    Student.order('first_name ASC')
  end

end
