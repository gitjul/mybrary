class BooksController < ApplicationController
  def index
    @books = Book.page(params[:page]).per(3)
  end

  def show
    @book = Book.find(params[:id])
  end

  def change_status
    @book = Book.find(params[:id])
    @book.update_attribute(:state, params[:status])
    redirect_to :back
  end
end
