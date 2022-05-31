class User < ApplicationRecord
  has_many :book_requests
  has_many :books, through: :book_requests
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable 
  validates :name, presence: true

end
