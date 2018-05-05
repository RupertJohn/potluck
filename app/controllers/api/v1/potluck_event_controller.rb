module API
  module V1
    class PotluckEventController < ApplicationController
      def show
        @potluck_event = PotluckEvent.includes(:dishes).find_by(id: params[:id])
        render json: @potluck_event, serializer: PotluckEventSerializer
      end

      private
        def potluck_params
          params.require(:potluck_event).permit(:name, :location, :location_nickname, :date)
        end
    end
  end
end
