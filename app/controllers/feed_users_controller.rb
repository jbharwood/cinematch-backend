class FeedUsersController < ApplicationController
  before_action :set_feed_user, only: [:show, :update, :destroy]

  # GET /feed_users
  def index
    @feed_users = FeedUser.all

    render json: @feed_users
  end

  # GET /feed_users/1
  def show
    render json: @feed_user
  end

  # POST /feed_users
  def create
    @feed_user = FeedUser.new(feed_user_params)

    if @feed_user.save
      render json: @feed_user, status: :created, location: @feed_user
    else
      render json: @feed_user.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /feed_users/1
  def update
    if @feed_user.update(feed_user_params)
      render json: @feed_user
    else
      render json: @feed_user.errors, status: :unprocessable_entity
    end
  end

  # DELETE /feed_users/1
  def destroy
    @feed_user.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_feed_user
      @feed_user = FeedUser.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def feed_user_params
      params.require(:feed_user).permit(:username, :feed_id, :user_id)
    end
end
