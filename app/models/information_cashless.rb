class InformationCashless < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions

  belongs_to :information
  belongs_to_active_hash :cashless
end
