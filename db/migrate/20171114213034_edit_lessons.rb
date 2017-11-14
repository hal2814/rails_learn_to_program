class EditLessons < ActiveRecord::Migration[5.1]
  def change
    add_column(:lessons, :day, :string)
  end
end
