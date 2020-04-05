class ConceptsController < ApplicationController

  def new
    @topic = Topic.find(params[:topic_id])
    @concept = @topic.concepts.build
  end

  def create
    @topic = Topic.find(params[:topic_id])

    @concept = @topic.concepts.create(concept_params)
    redirect_to topic_concepts_path(@topic)
  end

  def index
    @topic = Topic.find(params[:topic_id])
    @concepts = @topic.concepts
  end

  def show
    @concept = Concept.find(params[:id])
  end

  private

  def concept_params
    params.require(:concept).permit(:title, :content)
  end

end
