class Teacher < ApplicationRecord
  belongs_to :school
  has_many :classrooms
end
