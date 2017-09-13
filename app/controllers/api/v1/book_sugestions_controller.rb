module Api
  module V1
    class BookSugestionsController < ApiController
      skip_before_action :authenticate_request
      def create
        @book_sugestion = BookSugestion.new(book_sugestion_params)
        if @book_sugestion.save
          render json: @book_sugestion, status: :created
        else
          render json: { errors: @book_sugestion.errors.full_messages }, status: :bad_request
        end
      end

      def book_sugestion_params
        params.permit(:editorial, :user_id, :price, :author, :title, :link, :publisher, :year)
      end
    end
  end
end
