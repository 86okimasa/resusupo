class Information < ApplicationRecord
  
  belongs_to :admin
  has_many :information_genres
  has_many :information_cashlesses
  has_many :information_wi_fis
  has_one_attached :image

  def genres
    information_genres.map(&:genre)
  end

  def cashlesses
    information_cashlesses.map(&:cashless)
  end

  def wi_fis
    information_wi-fis.map(&:wi_fi)
  end

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :prefecture
  belongs_to :tobacco
  belongs_to :child

end
