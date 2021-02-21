class Creature < ApplicationRecord
  has_many :spot_creatures
  has_many :spots, through: :spot_creatures
end
