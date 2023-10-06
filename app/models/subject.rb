class Subject < ApplicationRecord
  has_many :school_logins
  belongs_to :class_name

  
end
