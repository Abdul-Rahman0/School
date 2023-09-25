class ClassName < ApplicationRecord

  validates :name, uniqueness: true



  has_many :school_login, dependent: :destroy
  has_many :subjects, dependent: :destroy

  
  has_many :classinfo
  has_many :teachers, through: :classinfo
end
