class Article < ApplicationRecord
  # Validations of the the title and body fields
  validates_presence_of :title, :body

  # Association between Article & User. Specifies comment dependencies as well.
  belongs_to :user
  has_many :comments, dependent: :destroy

  # Search Article titles & Bodies.
  def self.search(search)
    where("title || body ILIKE ?", "%#{search}%")
  end
end
