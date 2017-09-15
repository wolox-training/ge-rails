module Api
  module V1
    class BookSuggestionsController < ApiController
      skip_before_action :authenticate_request
      def create
        @book_suggestion = BookSuggestion.new(book_suggestion_params)
        if @book_suggestion.save
          render json: @book_suggestion, status: :created
        else
          render json: { errors: @book_suggestion.errors.full_messages }, status: :bad_request
        end
      end

      def book_suggestion_params
        params.permit(:editorial, :user_id, :price, :author, :title, :link, :publisher, :year)
      end
    end
  end
end
