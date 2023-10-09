class CreateSubjects < ActiveRecord::Migration[7.0]
  def change
    create_table :subjects do |t|
      t.string :code
      t.string :name
      t.references :class_name, null: false, foreign_key: true
      t.references :teacher, foreign_key: true, null: true  # Set :null => true to make it optional

      t.timestamps
    end
  end
end
