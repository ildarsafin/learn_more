class Topic < ApplicationRecord
  has_many :concepts, dependent: :destroy

  has_many :topic_subscriptions
  has_many :users, through: :topic_subscriptions

  has_one_attached :featured_image
end
