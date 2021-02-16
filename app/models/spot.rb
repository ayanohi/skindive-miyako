class Spot < ApplicationRecord
  belongs_to :area
  mount_uploader :image, ImageUploader

  with_options presence: true do
    validates :name
    validates :area_id
  end

end
