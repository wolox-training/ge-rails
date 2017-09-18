class BookSuggestionsController < ApplicationController
  def new
    @book_suggestions = BookSuggestion.all
  end
end
