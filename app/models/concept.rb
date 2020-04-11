class Concept < ApplicationRecord
  belongs_to :topic

  has_rich_text :content

  has_one_attached :featured_image
end
