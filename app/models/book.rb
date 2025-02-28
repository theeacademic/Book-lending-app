class Book < ApplicationRecord
  has_many :lending_histories
  has_many :borrowers, through: :lending_histories

  validates :title, :author, :status, presence: true
end

