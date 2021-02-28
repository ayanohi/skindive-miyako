class Comment < ApplicationRecord
  belongs_to :spot
  belongs_to :user
  belongs_to :weather, optional: true
  belongs_to :tide, optional: true
  belongs_to :wind, optional: true
end
