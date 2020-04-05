class CreateConcepts < ActiveRecord::Migration[6.0]
  def change
    create_table :concepts do |t|
      t.string :title
      t.text :content
      t.string :featured_image

      t.integer :created_by

      t.references :topic, foreign_key: true

      t.timestamps
    end
  end
end
