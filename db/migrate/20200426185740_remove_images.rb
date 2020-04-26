class RemoveImages < ActiveRecord::Migration[6.0]
  def change
    remove_column :concepts, :featured_image, :string
    remove_column :topics, :featured_image, :string
    remove_column :users, :avatar, :string
  end
end
