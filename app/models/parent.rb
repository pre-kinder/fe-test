class Parent < ApplicationRecord
  has_many :children
  
  validates :email, presence: true, uniqueness: true
  validates :first_name, :last_name, presence: true
  validates :phone_number, :address, presence: true
end
