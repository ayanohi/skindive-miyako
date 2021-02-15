class Spot < ApplicationRecord
  belongs_to :area, optional: true

  with_options presence: true do
    validates :name
    # validates :area_id
  end

end
