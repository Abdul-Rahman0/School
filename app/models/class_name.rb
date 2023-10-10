class ClassName < ApplicationRecord

  validates :name, uniqueness: true



  has_many :school_login, dependent: :destroy
  has_many :subjects, dependent: :destroy
  accepts_nested_attributes_for :subjects 


  
  has_and_belongs_to_many :teachers
end
