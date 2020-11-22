class InformationGenre < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions

  belongs_to :information
  belongs_to_active_hash :genre
end
