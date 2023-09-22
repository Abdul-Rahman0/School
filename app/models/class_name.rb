class ClassName < ApplicationRecord
  # has_many :subject , dependent: :destroy



  has_many :classinfo
  has_many :teachers, through: :classinfo
end
