class Feature < ApplicationRecord
  has_many :spots
  has_many :spots, through: :spot_features
end
