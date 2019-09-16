class User < ApplicationRecord
  has_many :guides
  has_many :enrollments
  has_many :enrolled_guides, through: :enrollments, source: :guide
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def enrolled_in?(guide)
    return enrolled_guides.include?(guide)
  end


end
