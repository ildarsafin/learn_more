class AddFeaturedImageToTopics < ActiveRecord::Migration[6.0]
  def change
    add_column :topics, :featured_image, :string
  end
end
