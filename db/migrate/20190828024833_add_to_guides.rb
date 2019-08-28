class AddToGuides < ActiveRecord::Migration[5.2]
  def change
  	add_column :guides, :cost, :decimal
  end
end
