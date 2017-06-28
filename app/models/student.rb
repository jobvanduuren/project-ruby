class Student < ApplicationRecord
  validates :first_name, presence: true
  validates :surname, presence: true

  validates :image_url, length: { maximum: 400 }, allow_blank: true

  belongs_to :batch

  def self.chronological
    Student.order('first_name ASC')
  end

end
