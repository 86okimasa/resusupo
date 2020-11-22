class Child < ActiveHash::Base
  self.data = [
    { id: 0, name: '--' },
    { id: 1, name: '可' },
    { id: 2, name: '不可' },
    { id: 3, name: 'その他(備考欄に記載)' }
  ]

  include ActiveHash::Associations
  has_many :informations
end
