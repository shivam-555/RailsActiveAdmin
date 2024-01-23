class CreateGrades < ActiveRecord::Migration[5.2]
  def change
    create_table :grades do |t|
      t.integer :value
      t.references :student, foreign_key: true
      t.references :assignment, foreign_key: true

      t.timestamps
    end
  end
end
