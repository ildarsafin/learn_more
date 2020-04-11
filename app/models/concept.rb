class Concept < ApplicationRecord
  belongs_to :topic

  has_many :concept_learnings, dependent: :destroy
  has_many :users, through: :concept_learnings

  has_rich_text :content

  has_one_attached :featured_image, dependent: :destroy

  validates :featured_image, presence: true
  validates :learning_time_minutes, presence: true
  validates :short_description, presence: true
  validates :content, presence: true
  validates :title, presence: true
end
