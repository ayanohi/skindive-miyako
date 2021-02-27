class Spot < ApplicationRecord
  belongs_to :area
  has_many :spot_creatures, dependent: :destroy
  has_many :spot_features, dependent: :destroy
  has_many :creatures, through: :spot_creatures
  has_many :features, through: :spot_features
  has_many :comments
  mount_uploader :image, ImageUploader

  with_options presence: true do
    validates :name
    validates :area_id
  end

  def get_creatures
    spot_creatures = []
    creatures.each do |creature|
      spot_creatures << creature.name
    end
  end

  def get_features
    spot_features = []
    features.each do |feature|
      spot_features << feature.name
    end
  end

end
