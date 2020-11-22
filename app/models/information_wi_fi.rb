class InformationWiFi < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions

  belongs_to :information
  belongs_to_active_hash :wi_fi
end
