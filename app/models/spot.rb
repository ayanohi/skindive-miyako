class Spot < ApplicationRecord
  belongs_to :area
  has_many :spot_creatures
  has_many :creatures, through: :spot_creatures
  mount_uploader :image, ImageUploader

  with_options presence: true do
    validates :name
    validates :area_id
  end

end
