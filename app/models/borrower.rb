class Borrower < ApplicationRecord
  has_many :lending_histories
  has_many :books, through: :lending_histories

  validates :name, presence: true
end

