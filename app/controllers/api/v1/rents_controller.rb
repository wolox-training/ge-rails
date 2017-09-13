# app/controllers/api/v1/rents_controller.rb
module Api
  module V1
    class RentsController < ApiController
      before_action :authenticate_request
      def index
        @rents = policy_scope(Rent.all)
        render json: @rents
      end

      def create
        @rent = Rent.new(rent_params)
        authorize @rent
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
