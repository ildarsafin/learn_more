class CreateConceptLearnings < ActiveRecord::Migration[6.0]
  def change
    create_table :concept_learnings do |t|
      t.references :concept, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
