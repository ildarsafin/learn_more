class TopicsController < ApplicationController

  def new
    @topic = Topic.new
  end

  def create
    @topic = Topic.new(topic_params)
    @topic.created_by = current_user.id
    @topic.save
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
