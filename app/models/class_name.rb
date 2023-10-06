class ClassName < ApplicationRecord

  validates :name, uniqueness: true



  has_many :school_login, dependent: :destroy
  has_many :subjects, dependent: :destroy
  accepts_nested_attributes_for :subjects 


  
  has_many :classinfo
  has_many :teachers, through: :classinfo
end
