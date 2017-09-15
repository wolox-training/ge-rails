require 'rails_helper'

describe Api::V1::BookSuggestionsController, type: :controller do
  describe 'POST #create' do
    let!(:book_suggestion) { create(:book_suggestion) }
    context 'When creating a valid suggestion' do
      before do
        post :create, params: { book_suggestion: {
          editorial: book_suggestion.editorial,
          price: 2,
          title: book_suggestion.title,
          publisher: book_suggestion.publisher,
          year: book_suggestion.year,
          link: book_suggestion.link,
          author: book_suggestion.author,
          user_id: book_suggestion.user_id
        } }
      end

      it 'responds with 201 status' do
        expect(response).to have_http_status(:created)
      end
    end
    context 'When creating an invalid suggestion' do
      before do
        post :create, params: { book_suggestion: {
          editorial: book_suggestion.editorial,
          price: 2,
          publisher: book_suggestion.publisher,
          year: book_suggestion.year,
          author: book_suggestion.author,
          user_id: book_suggestion.user_id
        } }
      end

      it 'doesn\'t create a new book suggestion' do
        expect do
          post :create, params: {}
        end.to_not(change { BookSuggestion.count })
      end

      it 'returns error messages' do
        expect(response_body['errors']).to be_present
      end

      it 'responds with 400 status' do
        expect(response).to have_http_status(:bad_request)
      end
    end
  end
end
