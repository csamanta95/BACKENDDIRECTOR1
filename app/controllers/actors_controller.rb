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
    
      def update
        @actor = Actor.find(params[:id])
        @actor.update(actor_params)
        render json: @actor
    end

    def destroy
        @actor = Actor.find(params[:id])
        @actor.destroy
        @actor = Actor.all
        render json: @actor
    end
      private
    
      def actor_params
        params.permit(:name, :age, :experience, :director_id, :image)
      end
end
