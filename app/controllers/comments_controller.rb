class CommentsController < ApplicationController

    def index
        @comments = Comment.all 
        render json: @comments 
    end

    def create
        @actor = @director.actors.comments.create(comment_params)
        render json: @actor
      end

      private
    
      def comment_params
        params.permit(:comment, :director_id, :actor_id)
      end
end
