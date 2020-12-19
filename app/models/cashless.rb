class Cashless < ActiveHash::Base
  self.data = [
    { id: 0, name: 'VISA' },
    { id: 1, name: 'MasterCard' },
    { id: 2, name: 'AMEX' },
    { id: 3, name: 'JCB' },
    { id: 4, name: 'Diners' },
    { id: 5, name: 'Discover' },
    { id: 6, name: '銀聯' },
    { id: 7, name: 'TS CUBIC'},
    { id: 8, name: 'JCB PREMO'},
    { id: 9, name: '楽天Edy' },
    { id: 10, name: 'iD' },
    { id: 11, name: 'QUICpay' },
    { id: 12, name: 'nanaco'},
    { id: 13, name: 'WAON'},
    { id: 14, name: 'ALIPAY'},
    { id: 15, name: 'PayPay' },
    { id: 16, name: '楽天ペイ' },
    { id: 17, name: 'メルペイ' },
    { id: 18, name: 'd払い' },
    { id: 19, name: 'au PAY' },
    { id: 20, name: 'LINE Pay' },
    { id: 21, name: 'Apple Pay' },
    { id: 22, name: 'Google Pay' },
    { id: 23, name: 'Kitaca'},
    { id: 24, name: 'Suica' },
    { id: 25, name: 'PASMO' },
    { id: 26, name: 'TOICA' },
    { id: 27, name: 'manaca'},
    { id: 28, name: 'ICOCA'},
    { id: 29, name: 'nimoca'},
    { id: 30, name: 'はやかけん' },
    { id: 31, name: 'SUGOCA' },
    { id: 32, name: 'PiTaPa' },
    { id: 33, name: 'その他(備考欄に記載)' }
  ]

  include ActiveHash::Associations
  
  has_many :information_cashlesses
  has_many :informations, through: :information_cashlesses

  def informations
    information_cashlesses.map(&:information)
  end

end