# app/controllers/api/v1/books_controller.rb
module Api
  module V1
    class BooksController < ApplicationController
      include Wor::Paginate
      def index
        @books = Book.all
        render_paginated json: @books
      end

      def show
        @book = Book.find(params[:id])
        render json: @book, serializer: BookImageSerializer
      end
    end
  end
end
