class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :topic_subscriptions
  has_many :topics, through: :topic_subscriptions

  has_many :concept_learnings
  has_many :concepts, through: :concept_learnings

  has_one_attached :avatar, dependent: :destroy

  validates :full_name, presence: true
  validates :avatar, presence: true

  def topic_creator?(topic)
    topic.created_by == id
  end

  def subscribed?(topic)
    topic_subscriptions.where(topic: topic).present?
  end

  def learned?(concept)
    concept_learnings.where(concept: concept).present?
  end

end
