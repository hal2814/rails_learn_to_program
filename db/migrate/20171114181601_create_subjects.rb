class CreateSubjects < ActiveRecord::Migration[5.1]
  def change
    create_table :subjects do |t|
      t.column :title, :string
      t.column :course_id, :integer
    end
  end
end
