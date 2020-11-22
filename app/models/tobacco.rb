class Tobacco < ActiveHash::Base
  self.data = [
    { id: 0, name: '--' },
    { id: 1, name: '全席禁煙' },
    { id: 2, name: '分煙' },
    { id: 3, name: '全席喫煙可' },
    { id: 4, name: '時間により変更(備考欄に記載)'}
  ]

  include ActiveHash::Associations
  has_many :informations
end
