class Section < ApplicationRecord
  belongs_to :guide
  has_many :lessons

  include RankedModel
  ranks :row_order, with_same: :guide_id
end
