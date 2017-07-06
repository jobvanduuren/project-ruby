class Student < ApplicationRecord
  belongs_to :batch
  has_many :assessments, dependent: :destroy

  validates :first_name, presence: true
  validates :surname, presence: true
  validates :image_url, length: { maximum: 500 }, allow_blank: true, format: { with: %r{.(gif|jpg|png)\Z}i, message: 'must be a URL for GIF, JPG or PNG image.' }
  




  def self.chronological
    Student.order('first_name ASC')
  end

end
