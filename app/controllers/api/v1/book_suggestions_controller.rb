module Api
  module V1
    class BookSuggestionsController < ApiController
      include Wor::Paginate
      skip_before_action :authenticate_request
      respond_to :html, :js

      def index
        @book_suggestions = BookSuggestion.all
        render_paginated @book_suggestions
      end

      def create
        @book_suggestion = BookSuggestion.new(book_suggestion_params)
        if @book_suggestion.save
          render json: @book_suggestion, status: :created
        else
          render json: { errors: @book_suggestion.errors.full_messages }, status: :bad_request
        end
      end

      def book_suggestion_params
        params.require(:book_suggestion).permit(:editorial, :user_id, :price, :author, :title, :link, :publisher, :year)
      end
    end
  end
end
