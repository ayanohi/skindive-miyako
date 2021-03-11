class Comment < ApplicationRecord
  belongs_to :spot
  belongs_to :user
  belongs_to :weather
  belongs_to :tide
  belongs_to :wind

  with_options presence: true do
    validates :weather_id
    validates :tide_id
    validates :wind_id
    validates :content
    validates :visit_date
    validates :visit_time
  end
end
