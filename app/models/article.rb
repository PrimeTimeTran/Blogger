class Article < ApplicationRecord
  # Association between article and User
  belongs_to :user
  has_many :comments

  # Search for article titles and bodies.
  def self.search(search)
    where("title LIKE ?", "%#{search}%")
    where("body LIKE ?", "%#{search}%")
  end
end
