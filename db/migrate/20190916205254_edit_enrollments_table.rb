class EditEnrollmentsTable < ActiveRecord::Migration[5.2]
  def change
    change_table :enrollments do |t|
      t.remove :course_id
      t.integer :guide_id
    end
  end
end
