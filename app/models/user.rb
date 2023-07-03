class User < ApplicationRecord
  # Include default devise modules. Others available are:
  attr_writer :login

  def login
    @login || self.username || self.email
  end

  has_many :comments
  has_many :categories
  has_many :articles

  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
