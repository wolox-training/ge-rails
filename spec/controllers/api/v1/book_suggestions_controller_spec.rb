require 'rails_helper'
# rubocop:disable Metrics/BlockLength
describe Api::V1::BookSuggestionsController, type: :controller do

  describe 'POST #create' do
    context 'When creating a valid suggestion' do
      let!(:user) { create(:user) }
      let!(:book_suggestion) { create(:book_suggestion) }
        before do
            post :create, params: { editorial: book_suggestion.editorial, price: 2, title: book_suggestion.title, publisher: book_suggestion.publisher, year: book_suggestion.year, link: book_suggestion.link, author: book_suggestion.author, user_id: book_suggestion.user_id }
        end
        
        it 'responds with 201 status' do
          expect(response).to have_http_status(:created)
        end
    end
  end
end