class LendingHistoriesController < ApplicationController
  def create
    @book = Book.find(params[:book_id])
    @borrower = Borrower.find_or_create_by(name: params[:borrower_name])
    @history = @book.lending_histories.create(borrower: @borrower, borrowed_at: Time.now)

    redirect_to @book, notice: "Book borrowed successfully."
  end

  def update
    @history = LendingHistory.find(params[:id])
    @history.update(returned_at: Time.now)

    redirect_to book_path(@history.book), notice: "Book returned successfully."
  end
end

