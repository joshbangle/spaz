class Section < ApplicationRecord
  belongs_to :guide
  has_many :lessons
end
