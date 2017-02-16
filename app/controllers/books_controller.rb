class BooksController < ApplicationController
  def index
    @books = Book.all
    respond_to do |format|
      format.html
      format.text
      format.csv do |books|
        books = Book.generate_csv(@books)
        render :plain => books
      end
    end
  end
end
