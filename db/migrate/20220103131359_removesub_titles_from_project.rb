class RemovesubTitlesFromProject < ActiveRecord::Migration[6.1]
  def change
    remove_column :projects, :subTitles
  end
end
