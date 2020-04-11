class ConceptsController < ApplicationController

  def new
    @topic = Topic.find(params[:topic_id])
    @concept = @topic.concepts.build
  end

  def create
    @topic = Topic.find(params[:topic_id])

    @concept = @topic.concepts.build(concept_params)
    @concept.created_by = current_user.id
    @concept.save
    redirect_to topic_concepts_path(@topic)
  end

  def index
    @topic = Topic.find(params[:topic_id])
    @concepts = @topic.concepts.with_rich_text_content
  end

  def show
    @concept = Concept.find(params[:id])
  end

  private

  def concept_params
    params.require(:concept).permit(:title, :content, :featured_image)
  end

end
