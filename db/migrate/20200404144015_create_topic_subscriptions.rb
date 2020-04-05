class CreateTopicSubscriptions < ActiveRecord::Migration[6.0]
  def change
    create_table :topic_subscriptions do |t|
      t.references :topic, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
