# app/controllers/api/v1/books_controller.rb
module Api
  module V1
    class BooksController < ApplicationController
      def index
        @books = Book.all
        render json: @books
      end

      def show
        @book = Book.find(params[:id])
        render json: @book, serializer: BookSerializer
      end
    end
  end
end
