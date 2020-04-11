class Concept < ApplicationRecord
  belongs_to :topic

  has_many :concept_learnings
  has_many :users, through: :concept_learnings

  has_rich_text :content

  has_one_attached :featured_image
end
