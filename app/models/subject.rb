class Subject < ApplicationRecord
  has_many :school_logins
  belongs_to :class_name
  
  has_many :SubjectsTeacher
  has_many :teachers, through: :SubjectsTeacher
end
