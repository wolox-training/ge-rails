# app/controllers/api/v1/books_controller.rb
module Api
  module V1
    class BooksController < ApiController
      include Wor::Paginate
      before_action :authenticate_request
      def index
        @books = Book.all
        render_paginated @books, each_serializer: BookSerializer
      end

      def show
        @book = Book.find(params[:id])
        render json: @book, serializer: BookImageSerializer
      end
    end
  end
end
