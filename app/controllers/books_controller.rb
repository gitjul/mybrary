class BooksController < ApplicationController
  def index
    if params[:search]
      @books = Book.search params[:search],
                  :page => params[:page], :per => 4,
                  :star => true,
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

  def to_read
    @books = Book.to_read.page(params[:page]).per(4)
  end

  def read
    @books = Book.read.page(params[:page]).per(4)
  end

  def not_interested
    @books = Book.not_interested.page(params[:page]).per(4)
  end

  def dont_have
    @books = Book.dont_have.page(params[:page]).per(4)
  end

  def undefined
    @books = Book.undefined.page(params[:page]).per(4)
  end

  def change_status
    @book = Book.find(params[:id])
    @book.update_attribute(:status, params[:status])
    redirect_to :back
  end
end
