class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :omniauthable, omniauth_providers: [:google_oauth2]

  validates :email, presence: true, uniqueness: true
  validates :first_name, :last_name, presence: true
  enum role: [:teacher, :parent], _prefix: :role

  def self.from_omniauth(access_token)
    user = User.where(email: access_token[:info][:email]).first
    unless user
        user = User.create(first_name: access_token[:info][:first_name],
                           last_name: access_token[:info][:last_name],
                           email: access_token[:info][:email],
                           google_id: access_token[:uid],
                           google_image_url: access_token[:info][:image],
                           password: Devise.friendly_token[0,20],
                           token: access_token[:credentials][:token]
        )
    end
    user
  end

  def self.teacher?
    where("role = ?", "teacher")
  end

  def self.parent?
    where("role = ?", "parent")
  end
end
