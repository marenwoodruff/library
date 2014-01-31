class BooksController < ApplicationController
	# before_action :set_book, only: [:show, :edit, :update, :destroy]

	def index
		@books = Book.all
	end

	def new
		@book = Book.new
	end

	def create
		@book = Book.new(book_params)
		if @book.save
			redirect_to action: 'index'
			flash[:notice] = "Book created!"
		else
			render action: "new"
		end
	end

	def show
		@book = Book.find(params[:id])
	end

	def edit
		@book = Book.find(params[:id])
	end

	def update
		@book = Book.update(book_params)
		if @book.update(book_params)
			redirect_to action: 'index', notice: "Book was successfully updated."
		else
			render action: "edit"
		end
	end

	private

	def set_book
		@book = Book.find(params[:id])
	end

	def book_params
		params.require(:book).permit(:title, :author)
	end

end
