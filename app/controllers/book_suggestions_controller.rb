class BookSuggestionsController < ApiController
  skip_before_action :authenticate_request
  def new
    @book_suggestions = BookSuggestion.all
  end
end
