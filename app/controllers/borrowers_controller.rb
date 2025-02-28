class BorrowersController < ApplicationController
  def index
    @borrowers = Borrower.all
  end

  def show
    @borrower = Borrower.find(params[:id])
    @borrowed_books = @borrower.lending_histories.includes(:book)
  end
end

