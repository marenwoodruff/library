class Book
  include Mongoid::Document
  field :title, type: String
  field :author, type: String
  field :year, type: Integer
  field :isbn, type: String
  field :genre, type: String

  validates :title, presence: true
  validates :author, presence: true
  validates :year, numericality: true
  validates :isbn, presence: true, uniqueness: true
  validates :genre, presence: true
end
