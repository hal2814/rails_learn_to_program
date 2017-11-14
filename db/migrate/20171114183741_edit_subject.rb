class EditSubject < ActiveRecord::Migration[5.1]
  def change
    add_column(:subjects, :week, :string)
  end
end
