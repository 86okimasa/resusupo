class MeasureGeneral < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions

  belongs_to :measure
  belongs_to_active_hash :general

end
