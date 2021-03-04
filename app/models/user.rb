class User < ApplicationRecord
  has_many :comments
  has_many :histories, dependent: :destroy
  has_many :clips, dependent: :destroy
  mount_uploader :image, ImageUploader
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
