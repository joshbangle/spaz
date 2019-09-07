class EditSectionsTable < ActiveRecord::Migration[5.2]
  def change
    change_table :sections do |t|
      t.remove :course_id
      t.string :guide_id
    end
  end
end
