# app/controllers/api/v1/rents_controller.rb
module Api
  module V1
    class RentsController < ApiController
      include Wor::Paginate
      before_action :authenticate_request
      def index
        @rents = Rent.all
        render_paginated @rents
      end

      def create
        @rent = Rent.new(rent_params)
        if @rent.save
          MailerWorker.perform_async(@rent.id)
          render json: @rent
        else
          render json: { errors: @rent.errors.full_messages }, status: :bad_request
        end
      end

      def rent_params
        params.permit(:book_id, :user_id, :from, :to)
      end
    end
  end
end
