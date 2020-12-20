class Genre < ActiveHash::Base
  self.data = [
    { id: 0, name: '居酒屋' },
    { id: 1, name: '和食' },
    { id: 2, name: '寿司' },
    { id: 3, name: '焼肉・鉄板焼き' },
    { id: 4, name: 'イタリアン・フレンチ' },
    { id: 5, name: 'バイキング・ビュッフェ' },
    { id: 6, name: 'カレー' },
    { id: 7, name: '中華' },
    { id: 8, name: '洋食・西洋料理' },
    { id: 9, name: '鍋料理' },
    { id: 10, name: 'アジア・エスニック料理' },
    { id: 11, name: 'ラーメン・つけ麺' },
    { id: 12, name: 'BAR・バル' },
    { id: 13, name: 'カフェ・スイーツ' },
    { id: 14, name: '宴会・カラオケ' },
    { id: 15, name: 'ファミレス・ファーストフード' },
    { id: 16, name: 'その他(備考欄に記載)' }
  ]

  include ActiveHash::Associations
  
  has_many :information_genres
  has_many :informations, through: :information_genres

  def informations
    information_genres.map(&:information)
  end

end