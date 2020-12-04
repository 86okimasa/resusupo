class Information < ApplicationRecord
  
  belongs_to :admin
  has_many :information_genres
  has_many :information_cashlesses
  has_many :information_wi_fis
  has_one_attached :image
  has_many :comments, dependent: :destroy
  has_many :follows, dependent: :destroy
  has_many :users, through: :follows

  # 「すでにいいねしたかどうか」を判断するためのメソッド
  # followsテーブルの「いいねしたユーザー：user_id」カラムにuser.idが存在するのか探す
  def followed_by?(user)
    follows.where(user_id: user.id).exists?
  end

  def genres
    information_genres.map(&:genre)
  end

  def cashlesses
    information_cashlesses.map(&:cashless)
  end

  def wi_fis
    information_wi-fis.map(&:wi_fi)
  end

  def self.search(search)
    if search != ""
      Information.where('shop_name LIKE(?)', "%#{search}%")
    else
      Information.all
    end
  end

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :prefecture
  belongs_to :tobacco
  belongs_to :child

end
