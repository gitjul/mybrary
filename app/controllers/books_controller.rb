class BooksController < ApplicationController
  def index
    if params[:search]
      @books = Book.search params[:search],
                  :page => params[:page], :per => 4,
                  :match_mode => :boolean,
                  :sort_mode => :extended,
                  :order => "@relevance DESC, created_at DESC"
    else 
      @books = Book.page(params[:page]).per(4)
    end
  end

  def show
    @book = Book.find(params[:id])
  end

  def change_status
    @book = Book.find(params[:id])
    @book.update_attribute(:status, params[:status])
    redirect_to :back
  end
end
