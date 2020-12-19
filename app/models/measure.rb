class Measure < ApplicationRecord

  with_options presence: true do
    validates :image
    validates :content
    validates :information_id
  end

  belongs_to :information
  has_many :measure_generals
  has_many :generals, through: :measure_generals
  has_one_attached :image

  def generals
    measure_generals.map(&:general)
  end
  
end