class User < ApplicationRecord

  has_many :topic_subscriptions
  has_many :topics, through: :topic_subscriptions

  has_many :concept_learnings
  has_many :concepts, through: :concept_learnings

  def subscribed?(topic)
    topic_subscriptions.where(topic: topic).present?
  end

  def learned?(concept)
    concept_learnings.where(concept: concept).present?
  end

end
