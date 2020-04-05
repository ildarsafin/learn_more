class TopicsController < ApplicationController

  def new
    @topic = Topic.new
  end

  def create
    @topic = Topic.create(topic_params)
    redirect_to topics_path
  end

  def index
    @topics = Topic.all
  end

  private

  def topic_params
    params.require(:topic).permit(:name)
  end

end
