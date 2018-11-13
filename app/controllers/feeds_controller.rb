class FeedsController < ApplicationController
before_action :set_feed, only:[:show, :edit, :update]
  
  def index
    @feed = Feed.all
  end

  def new
    @feed = Feed.new
  end

  def create
    feed = Feed.new(feed_params)
    if feed.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @feed.update(feed_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  def destroy
    @feed = Feed.find_by(id:params[:id]).destroy
    redirect_to root_path
  end

  private

  def feed_params
    params.require(:feed).permit(:propertyname, :rent, :address, :age, :remarks)
  end

  def set_feed
    @feed = Feed.find(params[:id])
  end
end