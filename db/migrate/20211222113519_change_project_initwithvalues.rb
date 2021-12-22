class ChangeProjectInitwithvalues < ActiveRecord::Migration[6.1]
  def change
    rename_column :projects, :initWithValues, :name
  end
end
