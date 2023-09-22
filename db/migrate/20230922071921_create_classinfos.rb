class CreateClassinfos < ActiveRecord::Migration[7.0]
  def change
    create_table :classinfos do |t|
      t.belongs_to :class_name
      t.belongs_to :teacher
      t.timestamps
    end
  end
end
