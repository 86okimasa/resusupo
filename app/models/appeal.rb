class Appeal < ApplicationRecord

  with_options presence: true do
    validates :images
    validates :appeal_point
    validates :explanation
    validates :information_id
  end

  belongs_to :information
  has_many_attached :images

end