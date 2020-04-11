class AddMoreColumns < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :full_name, :string
    add_column :users, :avatar, :string

    add_column :topics, :short_description, :string

    add_column :concepts, :short_description, :string
    add_column :concepts, :learning_time_minutes, :integer
  end
end
