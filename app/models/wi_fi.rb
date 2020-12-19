class WiFi < ActiveHash::Base
  self.data = [
    { id: 0, name: 'docomo' },
    { id: 1, name: 'au' },
    { id: 2, name: 'ソフトバンク' },
    { id: 3, name: 'FREESPOT' },
    { id: 4, name: 'FON' },
    { id: 5, name: '自社Wi-Fi' },
    { id: 6, name: 'その他(備考欄に記載)'}
  ]

  include ActiveHash::Associations
  
  has_many :information_wi_fis
  has_many :informations, through: :information_wi_fis

  def informations
    information_wi_fis.map(&:information)
  end

end
