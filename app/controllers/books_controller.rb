class BooksController < ApplicationController
  def index
    @books = Book.page(params[:page]).per(3)
  end

  def show
    @book = Book.find(params[:id])
  end
end
