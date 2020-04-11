class Topic < ApplicationRecord
  has_many :concepts, dependent: :destroy

  has_many :topic_subscriptions, dependent: :destroy
  has_many :users, through: :topic_subscriptions

  belongs_to :creator, class_name: 'User', foreign_key: :created_by

  has_one_attached :featured_image, dependent: :destroy

  validates :featured_image, presence: true
  validates :short_description, presence: true
  validates :name, presence: true
end
