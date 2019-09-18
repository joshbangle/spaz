class Section < ApplicationRecord
  belongs_to :guide
  has_many :lessons

  include RankedModel
  ranks :row_order, with_same: :guide_id

  def next_section
    section = guide.sections.where("row_order > ?", self.row_order).rank(:row_order).first
    return section
  end
end
