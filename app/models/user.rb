class User < ApplicationRecord
  has_many :book_requests
  has_many :books, through: :book_requests

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable 
  validates :name, presence: true

  def requested?(book_id)
    self.book_requests.find_by(book_id: book_id)
  end
end
