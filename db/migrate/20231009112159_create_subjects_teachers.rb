class CreateSubjectsTeachers < ActiveRecord::Migration[7.0]
  def change
    create_table :subjects_teachers do |t|
      t.belongs_to :subject
      t.belongs_to :teacher
      t.timestamps
    end
  end
end
