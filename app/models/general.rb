class General < ActiveHash::Base
  self.data = [
    { id: 0, name: '従業員の体調管理徹底' },
    { id: 1, name: '従業員のマスク着用義務化' },
    { id: 2, name: '消毒液常備' },
    { id: 3, name: '換気' },
    { id: 4, name: '施設内消毒' },
    { id: 5, name: '座席の間隔保持' },
    { id: 6, name: '入店人数制限' },
    { id: 7, name: '間仕切り' },
    { id: 8, name: '飛沫防止シート設置' },
    { id: 9, name: 'レジの待機位置設定' },
    { id: 10, name: '入店時検温の協力' },
    { id: 11, name: '小皿取り分け提供' },
    { id: 12, name: '席数間引き' },
    { id: 13, name: 'トレー返金'}
  ]

  include ActiveHash::Associations
  
  has_many :measure_generals
  has_many :measure, through: :measure_generals

  def measures
    measure_generals.map(&:measure)
  end

end
