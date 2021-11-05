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
                           google_id: access_token[:info][:uid],
                           google_image_url: access_token[:info][:image],
                           password: Devise.friendly_token[0,20],
                           token: access_token[:credentials][:token]
        )
    end
    user
  end

  def self.teacher?
    User.role(:teacher)
  end

  def self.pearent?
    User.role(:parent)
  end

  # def self.from_google(auth)
  #   user = User.find_by(email: auth[:email])
  #   if user
  #     user.google_id = auth[:uid]
  #     user.save
  #   else
  #     user = User.where(google_id: auth[:uid]).first_or_create do |user|
  #       user.full_name = auth[:full_name]
  #       user.email = auth[:email]
  #       user.google_id = auth[:uid]
  #       user.avatar_url = auth[:avatar_url]
  #       # user.password = Devise.friendly_token[0,20]
  #     end
  #   end
  #   user
  # end
end
