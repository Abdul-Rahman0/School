class Subject < ApplicationRecord
  has_many :teachers
  belongs_to :class_name
end
