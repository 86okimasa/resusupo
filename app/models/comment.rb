class Comment < ApplicationRecord

  validates :text, presence: true
  validates :rate, presence: true

  belongs_to :user
  belongs_to :information

end
