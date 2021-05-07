class User < ApplicationRecord
  has_many :comments
  has_many :histories, dependent: :destroy
  has_many :clips, dependent: :destroy
  mount_uploader :image, ImageUploader
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :name,
            presence: true,
            uniqueness: {case_sensitive: true},
            length: { maximum: 30 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i.freeze
  validates :email,
            presence: true,
            uniqueness: {case_sensitive: true},
            length: { maximum: 255 },
            format: { with: VALID_EMAIL_REGEX }

  # ゲストユーザーを探す or 作成する機能
  def self.guest
    find_or_create_by!(name: 'ゲスト', email: 'guest@example.com', introduction: 'よろしくお願いします', pb: 12, sns: 'guest' ) do |user|
      user.password = SecureRandom.urlsafe_base64
      # user.confirmed_at = Time.now  # Confirmable を使用している場合は必要
    end
  end
end
