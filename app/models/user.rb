class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :timeoutable,
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

  # def self.from_omniauth_sign_up(auth)
  # # check if email address obtained from auth server is in User table
  #   user = User.where(email: auth[:info][:email]).first
  #   if user.present?
  #     user.first_name = auth.info.first_name
  #     user.last_name  = auth.info.last_name
  #     user.google_image_url = auth.info.image
  #     user.google_id  = auth.uid
  #     user.save
  #   else
  #     user            = User.new(google_id: auth.uid)
  #     user.email      = auth.info.email
  #     user.username   = "#{auth.uid}-#{auth.provider}"
  #     user.password   = Devise.friendly_token[0,20]
  #     user.first_name = auth.info.first_name
  #     user.last_name  = auth.info.last_name
  #     user.google_image_url     = auth.info.image
  #     user.status_id  = 2
  #     user.skip_mobile_validation = true
  #     user.skip_confirmation!
  #     user.save
  #   end
  #   user
  # end

  # def self.from_omniauth_sign_in(auth)
  #   if user = User.where(email: auth[:info][:email]).first
  #     user
  #   end
  # end

  def self.teacher?
    where("role = ?", "teacher")
  end

  def self.parent?
    where("role = ?", "parent")
  end
end
