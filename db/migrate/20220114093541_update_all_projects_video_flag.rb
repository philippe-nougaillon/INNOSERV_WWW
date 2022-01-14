class UpdateAllProjectsVideoFlag < ActiveRecord::Migration[6.1]
  def change
    Project.update_all(video: true)
  end
end
