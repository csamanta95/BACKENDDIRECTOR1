class DirectorsController < ApplicationController
    before_action :authorized, only: [:persist]
    # def index
    #     @director = Director.all 
    #     render json: @director 
    # end

    # def create 

    #     # director = Director.create(director_params)
    #     # render json: director
    #     # scene = Scene.create(scene_params)
    #     # render json: scene
    # end


  def create
    @director = Director.create(director_params)
    if @director.valid?
      infoToSaveInBox = {director_id: @director.id}
      encoded = encode_token(infoToSaveInBox)
      render json: {director: DirectorSerializer.new(@director), token: encoded}
    else
      render json: {error: @director.errors.full_messages}
    end
    # render json: @director
  end



  def persist
    infoToSaveInBox = {director_id: @director.id}
    encoded = encode_token(infoToSaveInBox)
    render json: {director: DirectorSerializer.new(@director), token: encoded}
  end


  def login
    @director = Director.find_by(username: params[:username])
    if @director && @director.authenticate(params[:password])
        # render json: @director

      infoToSaveInBox = {director_id: @director.id}
      encoded = encode_token(infoToSaveInBox)
      render json: {director: DirectorSerializer.new(@director), token: encoded}
    else
      render json: {error: "Sorry! Incorrect Username or Password. Please try again!"}
    end
  end

  private

  def director_params
    params.permit(:username, :password)
  end
end
