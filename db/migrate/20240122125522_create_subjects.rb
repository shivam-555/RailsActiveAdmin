class CreateSubjects < ActiveRecord::Migration[5.2]
  def change
    create_table :subjects do |t|
      t.string :name
      t.references :classroom, foreign_key: true

      t.timestamps
    end
  end
end
