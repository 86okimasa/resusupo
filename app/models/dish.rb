class Dish < ApplicationRecord

  with_options presence: true do
    validates :images
    validates :cooking_name
    validates :cooking_detail
    validates :information_id
  end

  belongs_to :information
  has_many_attached :images

end
