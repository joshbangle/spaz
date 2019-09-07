class EditSectionsAgain < ActiveRecord::Migration[5.2]
  def change
    change_table :sections do |t|
      t.remove :guide_id
      t.integer :guide_id
    end
  end
end
