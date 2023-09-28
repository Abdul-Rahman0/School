class CreateSubjects < ActiveRecord::Migration[7.0]
  def change
    create_table :subjects do |t|
      t.string :code
      t.string :name
      t.references :class_name
      

      t.timestamps
    end
  end
end
