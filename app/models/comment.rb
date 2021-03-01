class Comment < ApplicationRecord
  belongs_to :spot
  belongs_to :user
  belongs_to :weather
  belongs_to :tide
  belongs_to :wind
end
