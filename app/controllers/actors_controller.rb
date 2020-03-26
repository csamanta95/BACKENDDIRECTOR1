class ActorsController < ApplicationController
  before_action :authorized, only: [:create]
    def index
        @actors = Actor.all 
        render json: @actors
    end
    def create
        @actor = @director.actors.create(actor_params)
        render json: @actor
      end
    
    
      private
    
      def actor_params
        params.permit(:name, :age, :experience, :director_id, :image)
      end
end
