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

  def subscribe
    topic = Topic.find_by(params[:topic_id])
    current_user.topic_subscriptions.find_or_create_by(topic: topic)
    redirect_to topics_path
  end

  private

  def topic_params
    params.require(:topic).permit(:name, :featured_image)
  end

end
