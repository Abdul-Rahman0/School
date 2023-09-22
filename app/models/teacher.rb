class Teacher < ApplicationRecord
  belongs_to :subject

  has_many :classinfo
  has_many :class_names, through: :classinfo
end
