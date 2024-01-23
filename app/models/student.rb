class Student < ApplicationRecord
  belongs_to :school
  has_many :grades
  has_many :attendances
end
